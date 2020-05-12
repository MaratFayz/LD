package LD.rest;

import LD.config.Security.SecurityConfig;
import LD.main;
import LD.model.Currency.Currency;
import LD.rest.CurrencyController;
import LD.service.CurrencyService;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultMatcher;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import java.util.ArrayList;

import static net.bytebuddy.matcher.ElementMatchers.is;
import static org.hamcrest.Matchers.hasSize;
import static org.mockito.Mockito.when;
import static org.springframework.security.test.web.servlet.setup.SecurityMockMvcConfigurers.springSecurity;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@WebMvcTest(CurrencyController.class)
public class CurrencyControllerTest
{
	@Autowired
	private MockMvc mvc;
	@MockBean
	private UserDetailsService userDetailsService;
	@Autowired
	private WebApplicationContext context;
	@MockBean
	private CurrencyService currencyService;

	private ArrayList<Currency> currencyList;
	Currency RUB;
	Currency USD;
	Currency EUR;

	@Before
	public void setup() {
		mvc = MockMvcBuilders
				.webAppContextSetup(context)
				.apply(springSecurity())
				.build();
	}

	@Before
	public void createListOfValues()
	{
		this.currencyList = new ArrayList<>();
		RUB = Currency.builder().short_name("RUB").build();
		USD = Currency.builder().short_name("USD").build();
		EUR = Currency.builder().short_name("EUR").build();

		this.currencyList.add(RUB);
		this.currencyList.add(USD);
		this.currencyList.add(EUR);
	}

	@Test
	@WithMockUser(value = "test_admin")
	public void return_AllValues_when_getRequest() throws Exception
	{
		when(currencyService.getAllCurrencies()).thenReturn(this.currencyList);
		when(userDetailsService.loadUserByUsername("test_admin")).thenReturn(User.builder()
				.username("a")
				.password("a")
				.build());

		mvc.perform(MockMvcRequestBuilders.get("/currencies")
				.contentType(MediaType.APPLICATION_JSON))
				.andExpect(status().isOk())
				.andExpect(jsonPath("$", hasSize(3)));
//				.andExpect((ResultMatcher) jsonPath("$[0].short_name", is(RUB.getShort_name())))
//				.andExpect((ResultMatcher) jsonPath("$[1].short_name", is(USD.getShort_name())))
//				.andExpect((ResultMatcher) jsonPath("$[2].short_name", is(EUR.getShort_name())));
	}
}
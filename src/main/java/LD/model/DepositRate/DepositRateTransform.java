package LD.model.DepositRate;

import LD.config.DateFormat;
import LD.service.CompanyService;
import LD.service.CurrencyService;
import LD.service.DurationService;
import LD.service.ScenarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DepositRateTransform
{
	@Autowired
	CompanyService companyService;
	@Autowired
	CurrencyService currencyService;
	@Autowired
	DurationService durationService;
	@Autowired
	ScenarioService scenarioService;

	public DepositRate DepositRatesDTO_in_to_DepositRates(DepositRateDTO_in depositRateDTO_in)
	{
		DepositRateID entryIFRSAccID = getDepositRatesID(
				depositRateDTO_in.getCompany(),
				depositRateDTO_in.getCurrency(),
				depositRateDTO_in.getDuration(),
				depositRateDTO_in.getScenario(),
				depositRateDTO_in.getSTART_PERIOD(),
				depositRateDTO_in.getEND_PERIOD());

		return DepositRate.builder()
				.depositRateID(entryIFRSAccID)
				.RATE(depositRateDTO_in.getRATE())
				.build();
	}

	public DepositRateDTO_out DepositRates_to_DepositRatesDTO_out(DepositRate depositRate)
	{
		return DepositRateDTO_out.builder()
				.company(depositRate.depositRateID.getCompany().getId())
				.currency(depositRate.depositRateID.getCurrency().getId())
				.duration(depositRate.depositRateID.getDuration().getId())
				.START_PERIOD(DateFormat.formatDate(depositRate.depositRateID.getSTART_PERIOD()))
				.END_PERIOD(DateFormat.formatDate(depositRate.depositRateID.getEND_PERIOD()))
				.scenario(depositRate.depositRateID.getScenario().getId())
				.RATE(depositRate.getRATE())
				.build();
	}

	public DepositRateID getDepositRatesID(Long company_id, Long currency_id, Long duration_id, Long scenario_id, String startDate, String endDate)
	{
		return DepositRateID.builder()
				.company(companyService.getCompany(company_id))
				.currency(currencyService.getCurrency(currency_id))
				.duration(durationService.getDuration(duration_id))
				.END_PERIOD(DateFormat.parsingDate(endDate))
				.scenario(scenarioService.getScenario(scenario_id))
				.START_PERIOD(DateFormat.parsingDate(startDate))
				.build();
	}
}

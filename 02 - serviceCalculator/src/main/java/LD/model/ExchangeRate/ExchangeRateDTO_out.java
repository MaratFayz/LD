package LD.model.ExchangeRate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ExchangeRateDTO_out
{
	private Long currency;
	private Long scenario;
	private String date;
	private BigDecimal rate_at_date;
	private BigDecimal average_rate_for_month;
	private String user;
	private String lastChange;
}

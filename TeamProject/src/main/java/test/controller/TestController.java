package test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/test")
public class TestController {

	@GetMapping(value="miso")
	public String miso() {
		return "/test/miso";
	}
	@GetMapping(value="hong")
	public String hong() {
		return "/test/hong";
	}
	@GetMapping(value="seungchan")
	public String seungchan() {
		return "/test/seungchan";
	}
	@GetMapping(value="sangsang")
	public String sangsang() {
		return "/test/sangsang";
	}
}

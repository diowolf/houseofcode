package com.houseofcode.store.models;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
@Scope(value=WebApplicationContext.SCOPE_SESSION,
		proxyMode=ScopedProxyMode.TARGET_CLASS)
public class ShoppingCart implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private Map<ShoppingCartItem, Integer> items = new LinkedHashMap<>();

	public void add(ShoppingCartItem item) {
		items.put(item, getQuantity(item) + 1);
	}

	public int getQuantity(ShoppingCartItem item) {
		if (!items.containsKey(item)) {
			items.put(item, 0);
		}
		return items.get(item);
	}
	
	public int getQuantity() {
		return items.values().stream().reduce(0, 
				(next, accumulator) -> next + accumulator);
	}

	public Collection<ShoppingCartItem> getItems() {
		return items.keySet();
	}
	
	public BigDecimal getTotal(ShoppingCartItem item) {
		return item.getTotal(getQuantity(item));
	}
	
	public BigDecimal getTotal() {
		BigDecimal total = BigDecimal.ZERO;
		
		for (ShoppingCartItem item: items.keySet()) {
			total = total.add(getTotal(item));
		}
		
		return total;
	}

	public void remove(Long productId, TypePrice typePrice) {
		Product product = new Product();
		product.setId(productId);
		
		items.remove(new ShoppingCartItem(product, typePrice));
	}

}

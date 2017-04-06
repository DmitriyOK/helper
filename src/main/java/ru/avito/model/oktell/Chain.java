package ru.avito.model.oktell;

import java.util.List;

/**
 * Created by Dmitriy on 09.03.2017.
 */
public class Chain {
    String chainId;
    List<Commutation> commutations;

    public void setChainId(String chainId) {
        this.chainId = chainId;
    }

    public void setCommutations(List<Commutation> commutations) {
        this.commutations = commutations;
    }

    public String getChainId() {
        return chainId;
    }

    public List<Commutation> getCommutations() {
        return commutations;
    }

    @Override
    public String toString() {
        return "Chain{" +
                "chainId='" + chainId + '\'' +
                ", commutations=" + commutations +
                '}';
    }
}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.oo;

import java.util.ArrayList;

/**
 *
 * @author a
 */
public class BD {
    private static ArrayList<Cliente> clienteList;
    public static ArrayList<Cliente> getClienteList(){
        if(clienteList == null){
            clienteList = new ArrayList<>();
            Cliente c1 = new Cliente();
            c1.setNome("Fulano");
            c1.setEmail("fulano@domain.com");
            c1.setTelefone("+55 13 99000-1111");
            c1.setCpf("123.456.789-10");
            c1.setRg("12.345.678-9");
            c1.setEnd("Av. Ana costa 204, n°: 07");
            clienteList.add(c1);
            
            Cliente c2 = new Cliente();
            c2.setNome("Beltrano");
            c2.setEmail("beltrano@domain.com");
            c2.setTelefone("+55 13 99000-2222");
            c2.setCpf("123.456.789-11");
            c2.setRg("12.345.678-0");
            c2.setEnd("Av. Ana costa 199, n°: 22");
            clienteList.add(c2);
        }
        return clienteList;
    }
    private static ArrayList<Fornecedor> fornecedorList;
    public static ArrayList<Fornecedor> getFornecedorList(){
        if(fornecedorList == null){
            fornecedorList = new ArrayList<>();
            Fornecedor f1 = new Fornecedor();
            f1.setNome("Fulano Empresa");
            f1.setEmail("fulanoempresa@domain.com");
            f1.setTelefone("+55 13 99000-5555");
            f1.setRs("123.456.789-77");
            f1.setCnpj("12.345.678-7");
            f1.setEnd("Av. Ana costa 204, n°: 333");
            fornecedorList.add(f1);
            
            Fornecedor f2 = new Fornecedor();
            f2.setNome("Beltrano Empresa");
            f2.setEmail("beltranoempresa@domain.com");
            f2.setTelefone("+55 13 99000-4444");
            f2.setRs("123.456.789-99");
            f2.setCnpj("12.345.678-5");
            f2.setEnd("Av. Ana costa 199, n°: 123");
            fornecedorList.add(f2);
        }
        return fornecedorList;
    }
}

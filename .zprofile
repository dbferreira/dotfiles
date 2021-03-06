#!/bin/bash

alias gh='history|grep'
alias ls='ls -F'

# Shopify
alias new-shop='bin/rails dev:shop:create'
alias create-shop='bin/rails dev:shop:create PLAN=basic GATEWAY=bogus API_CLIENT_HANDLES=facebook,online_store'
function enable-beta() { bin/rails dev:betas:enable BETA="$1" SHOP_ID="$2"; }
function disable-beta() { bin/rails dev:betas:disable BETA="$1" SHOP_ID="$2"; }
function freeze() { bin/rails dev:shop:change_plan SHOP_ID="$1" PLAN=frozen; }
function change_plan() { bin/rails dev:shop:change_plan SHOP_ID="$1" PLAN="$2"; }

# Billing
function invoices() { bin/rails billing:invoice:all SHOP_ID="$1"; }
function credit-card() { bin/rails billing:payment_methods:credit_card SHOP_ID="$1"; }
function bank-account() { bin/rails billing:payment_methods:bank_account SHOP_ID="$1"; }

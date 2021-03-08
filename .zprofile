#!/bin/bash

alias gh='history|grep'
alias ls='ls -F'

# Shopify
alias new-shop='bin/rails dev:shop:create'
alias create-shop='bin/rails dev:shop:create'
function enable-beta() { bin/rails dev:betas:enable BETA="$1" SHOP_ID="$2"; }
function disable-beta() { bin/rails dev:betas:disable BETA="$1" SHOP_ID="$2"; }
function freeze() { bin/rails dev:shop:change_plan SHOP_ID="$1"; }

# Billing
function invoices() { bin/rails billing:invoice:all SHOP_ID="$1"; }
function credit-card() { bin/rails billing:payment_methods:credit_card SHOP_ID="$1"; }
function bank-account() { bin/rails billing:payment_methods:bank_account SHOP_ID="$1"; }

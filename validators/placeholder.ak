use cardano/address.{Credential}
use cardano/assets.{PolicyId}
use cardano/certificate.{Certificate}
use cardano/governance.{ProposalProcedure, Voter}
use cardano/transaction.{OutputReference, Transaction}

validator placeholder {
  mint(_redeemer: Data, _policy_id: PolicyId, _self: Transaction) {
    True
  }

  spend(
    _datum: Option<Data>,
    _redeemer: Data,
    _utxo: OutputReference,
    _self: Transaction,
  ) {
    True 
  }

  withdraw(_redeemer: Data, _account: Credential, _self: Transaction) {
    True 
  }

  publish(_redeemer: Data, _certificate: Certificate, _self: Transaction) {
    True 
  }

  vote(_redeemer: Data, _voter: Voter, _self: Transaction) {
    True 
  }

  propose(_redeemer: Data, _proposal: ProposalProcedure, _self: Transaction) {
    True 
  }

  // // If needs be, remove any of unneeded handlers above, and use:
  //
  // else(_ctx: ScriptContext) {
  //   True @"fallback logic if none of the other purposes match"
  // }
  //
  // // You will also need an additional import:
  // //
  // // use cardano/script_context.{ScriptContext}
}

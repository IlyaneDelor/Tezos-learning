let tx_success (result_attendu :string ): string =
    match result_attendu with
        Success _ -> "Test Bon"
        | Fail(err) -> 
            (match err with 
                Rejected _ -> "Rejected"
                | Balance_too_low _ -> "Balance trop faible"
                | Other(_s) -> "Autre"
            )

let tx_failure (err : text_exec_error): string  = 
   match err with
        Success(err) -> "test bon"
        | Fail(err) -> 
            (match err with 
                Rejected _ -> "Rejected"
                | Balance_too_low _ -> "Balance trop faible"
                | Other(_s) -> "Autre"
            )
            
.class Lcom/baidu/paysdk/ui/PwdPaySmsActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdPaySmsActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$2;->this$0:Lcom/baidu/paysdk/ui/PwdPaySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$2;->this$0:Lcom/baidu/paysdk/ui/PwdPaySmsActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/wallet/core/utils/CheckUtils;->isVodeAvailable(Ljava/lang/String;)Z

    move-result v1

    # invokes: Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->enableSubmitBtn(Z)V
    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->access$000(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

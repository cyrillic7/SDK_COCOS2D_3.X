.class Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->access$000(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Lcom/baidu/paysdk/datamodel/PwdRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->mPwdRequest:Lcom/baidu/paysdk/datamodel/PwdRequest;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->access$000(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)Lcom/baidu/paysdk/datamodel/PwdRequest;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/paysdk/datamodel/PwdRequest;->mPayPass:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;

    invoke-virtual {v1}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->getPwdConfirm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->doPay()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->access$100(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;

    # invokes: Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->error()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;->access$200(Lcom/baidu/paysdk/ui/PwdSetAndConfirmActivity;)V

    goto :goto_27
.end method

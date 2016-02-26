.class Lcom/baidu/paysdk/ui/PwdPaySmsActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdPaySmsActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$3;->this$0:Lcom/baidu/paysdk/ui/PwdPaySmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$3;->this$0:Lcom/baidu/paysdk/ui/PwdPaySmsActivity;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$3;->this$0:Lcom/baidu/paysdk/ui/PwdPaySmsActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPaySmsLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdPaySmsActivity$3;->this$0:Lcom/baidu/paysdk/ui/PwdPaySmsActivity;

    # getter for: Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->mPaySmsLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/PwdPaySmsActivity;->access$100(Lcom/baidu/paysdk/ui/PwdPaySmsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    return-void
.end method

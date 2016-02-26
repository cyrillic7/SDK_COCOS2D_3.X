.class Lcom/baidu/paysdk/ui/PwdBaseActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdBaseActivity;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/PwdBaseActivity;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdBaseActivity;

    iput-object p2, p0, Lcom/baidu/paysdk/ui/PwdBaseActivity$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/PwdBaseActivity$1;->this$0:Lcom/baidu/paysdk/ui/PwdBaseActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/ui/PwdBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/PwdBaseActivity$1;->val$view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

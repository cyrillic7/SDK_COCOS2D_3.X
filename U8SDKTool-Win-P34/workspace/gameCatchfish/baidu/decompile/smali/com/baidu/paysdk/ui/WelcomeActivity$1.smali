.class Lcom/baidu/paysdk/ui/WelcomeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/WelcomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/ui/WelcomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

    # getter for: Lcom/baidu/paysdk/ui/WelcomeActivity;->mTitleBack:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/WelcomeActivity;->access$000(Lcom/baidu/paysdk/ui/WelcomeActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WelcomeActivity$1;->this$0:Lcom/baidu/paysdk/ui/WelcomeActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/WelcomeActivity;->onBackPressed()V

    return-void
.end method

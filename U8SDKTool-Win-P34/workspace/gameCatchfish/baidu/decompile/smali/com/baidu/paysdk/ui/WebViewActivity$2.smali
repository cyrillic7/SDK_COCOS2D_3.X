.class Lcom/baidu/paysdk/ui/WebViewActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/WebViewActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/WebViewActivity$2;->this$0:Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity$2;->this$0:Lcom/baidu/paysdk/ui/WebViewActivity;

    const-string v1, "cookie"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/paysdk/ui/WebViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bduss_cookie"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->a()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/WebViewActivity$2;->this$0:Lcom/baidu/paysdk/ui/WebViewActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/WebViewActivity;->finish()V

    return-void
.end method

.class Lcom/baidu/wallet/core/beans/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/beans/BeanActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/beans/BeanActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/c;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/c;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    const-string v1, "cookie"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/beans/BeanActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bduss_cookie"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/c;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-static {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->getInstance(Landroid/content/Context;)Lcom/baidu/wallet/base/datamodel/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/base/datamodel/AccountManager;->logout()V

    invoke-static {}, Lcom/baidu/paysdk/PayCallBackManager;->a()V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/c;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanActivity;->finish()V

    return-void
.end method

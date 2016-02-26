.class Lcom/baidu/wallet/core/beans/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/beans/BeanActivity;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/beans/BeanActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/beans/d;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/d;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->hideKeyboard(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/beans/d;->a:Lcom/baidu/wallet/core/beans/BeanActivity;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/beans/BeanActivity;->onBackPressed()V

    return-void
.end method

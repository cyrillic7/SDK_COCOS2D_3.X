.class Lcom/baidu/wallet/base/widget/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/PluginEditText;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/PluginEditText;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/v;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/v;->a:Lcom/baidu/wallet/base/widget/PluginEditText;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/PluginEditText;->requestFocusFromTouch()Z

    const/4 v0, 0x1

    return v0
.end method

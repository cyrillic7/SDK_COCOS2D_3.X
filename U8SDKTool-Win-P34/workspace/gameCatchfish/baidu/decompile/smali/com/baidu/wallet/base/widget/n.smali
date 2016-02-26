.class Lcom/baidu/wallet/base/widget/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/r;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/r;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/n;->a:Lcom/baidu/wallet/base/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/n;->a:Lcom/baidu/wallet/base/widget/r;

    invoke-virtual {v0}, Lcom/baidu/wallet/base/widget/r;->dismiss()V

    return-void
.end method

.class Lcom/baidu/wallet/base/widget/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/WalletToast;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/WalletToast;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/a;->a:Lcom/baidu/wallet/base/widget/WalletToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/a;->a:Lcom/baidu/wallet/base/widget/WalletToast;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/WalletToast;->b(Lcom/baidu/wallet/base/widget/WalletToast;)V

    return-void
.end method

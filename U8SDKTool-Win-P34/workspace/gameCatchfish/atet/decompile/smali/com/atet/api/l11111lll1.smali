.class final Lcom/atet/api/l11111lll1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic l1l111lll1:Lcom/atet/api/l11l11l1l1;

.field private final synthetic l1lll1l1l1:Lcom/atet/api/pay/ui/service/IPayResultCallback;

.field private final synthetic lll11111l1:Ljava/lang/String;

.field private final synthetic lll1l111ll:I


# direct methods
.method constructor <init>(Lcom/atet/api/l11l11l1l1;Lcom/atet/api/pay/ui/service/IPayResultCallback;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/atet/api/l11111lll1;->l1l111lll1:Lcom/atet/api/l11l11l1l1;

    iput-object p2, p0, Lcom/atet/api/l11111lll1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IPayResultCallback;

    iput p3, p0, Lcom/atet/api/l11111lll1;->lll1l111ll:I

    iput-object p4, p0, Lcom/atet/api/l11111lll1;->lll11111l1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/atet/api/l11111lll1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IPayResultCallback;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/atet/api/l11111lll1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IPayResultCallback;

    iget v1, p0, Lcom/atet/api/l11111lll1;->lll1l111ll:I

    iget-object v2, p0, Lcom/atet/api/l11111lll1;->lll11111l1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/atet/api/pay/ui/service/IPayResultCallback;->onPayResult(ILjava/lang/String;)V

    :cond_d
    return-void
.end method

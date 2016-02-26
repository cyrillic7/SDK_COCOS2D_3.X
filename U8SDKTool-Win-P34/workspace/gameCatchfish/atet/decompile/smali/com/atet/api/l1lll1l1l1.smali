.class final Lcom/atet/api/l1lll1l1l1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic l11l11l1l1:J

.field final synthetic l1l111lll1:Lcom/atet/api/l1l111lll1;

.field private final synthetic l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAccountExCallback;

.field private final synthetic lll11111l1:Ljava/lang/String;

.field private final synthetic lll1l111ll:I


# direct methods
.method constructor <init>(Lcom/atet/api/l1l111lll1;Lcom/atet/api/pay/ui/service/IAccountExCallback;ILjava/lang/String;J)V
    .registers 8

    iput-object p1, p0, Lcom/atet/api/l1lll1l1l1;->l1l111lll1:Lcom/atet/api/l1l111lll1;

    iput-object p2, p0, Lcom/atet/api/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAccountExCallback;

    iput p3, p0, Lcom/atet/api/l1lll1l1l1;->lll1l111ll:I

    iput-object p4, p0, Lcom/atet/api/l1lll1l1l1;->lll11111l1:Ljava/lang/String;

    iput-wide p5, p0, Lcom/atet/api/l1lll1l1l1;->l11l11l1l1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/atet/api/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAccountExCallback;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/atet/api/l1lll1l1l1;->l1lll1l1l1:Lcom/atet/api/pay/ui/service/IAccountExCallback;

    iget v1, p0, Lcom/atet/api/l1lll1l1l1;->lll1l111ll:I

    iget-object v2, p0, Lcom/atet/api/l1lll1l1l1;->lll11111l1:Ljava/lang/String;

    iget-wide v4, p0, Lcom/atet/api/l1lll1l1l1;->l11l11l1l1:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/atet/api/pay/ui/service/IAccountExCallback;->onCallBack(ILjava/lang/String;J)V

    :cond_f
    return-void
.end method

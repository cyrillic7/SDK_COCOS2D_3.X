.class Lcom/tencent/stat/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/stat/f;

.field final synthetic b:Lcom/tencent/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/stat/au;Lcom/tencent/stat/f;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/stat/az;->b:Lcom/tencent/stat/au;

    iput-object p2, p0, Lcom/tencent/stat/az;->a:Lcom/tencent/stat/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/stat/az;->b:Lcom/tencent/stat/au;

    iget-object v1, p0, Lcom/tencent/stat/az;->a:Lcom/tencent/stat/f;

    invoke-static {v0, v1}, Lcom/tencent/stat/au;->a(Lcom/tencent/stat/au;Lcom/tencent/stat/f;)V

    return-void
.end method

.class Lcom/tencent/stat/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/stat/au;


# direct methods
.method constructor <init>(Lcom/tencent/stat/au;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/stat/ax;->a:Lcom/tencent/stat/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/stat/ax;->a:Lcom/tencent/stat/au;

    invoke-static {v0}, Lcom/tencent/stat/au;->a(Lcom/tencent/stat/au;)V

    return-void
.end method

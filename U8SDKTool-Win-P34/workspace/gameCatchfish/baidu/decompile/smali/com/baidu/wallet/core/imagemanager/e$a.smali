.class Lcom/baidu/wallet/core/imagemanager/e$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/wallet/core/imagemanager/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sb_imagecache_loop"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/baidu/wallet/core/imagemanager/e;->a(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    invoke-static {}, Lcom/baidu/wallet/core/imagemanager/e;->d()Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/baidu/wallet/core/imagemanager/e;->d()Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Lcom/baidu/wallet/core/imagemanager/e;->a(Landroid/os/Handler;)Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/wallet/core/imagemanager/ImageMemoryCache$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/wallet/core/imagemanager/e$a;-><init>()V

    return-void
.end method

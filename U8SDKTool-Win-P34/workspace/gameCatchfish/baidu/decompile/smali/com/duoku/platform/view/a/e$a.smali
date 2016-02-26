.class Lcom/duoku/platform/view/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/e;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/a/e;)V
    .registers 2

    .prologue
    .line 668
    iput-object p1, p0, Lcom/duoku/platform/view/a/e$a;->a:Lcom/duoku/platform/view/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/a/e;Lcom/duoku/platform/view/a/e$a;)V
    .registers 3

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/e$a;-><init>(Lcom/duoku/platform/view/a/e;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 674
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$a;->a:Lcom/duoku/platform/view/a/e;

    invoke-static {p2}, Lcom/duoku/a/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/duoku/a/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;Lcom/duoku/a/a/a/a/a;)V

    .line 675
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 680
    iget-object v0, p0, Lcom/duoku/platform/view/a/e$a;->a:Lcom/duoku/platform/view/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/e;->a(Lcom/duoku/platform/view/a/e;Lcom/duoku/a/a/a/a/a;)V

    .line 681
    return-void
.end method

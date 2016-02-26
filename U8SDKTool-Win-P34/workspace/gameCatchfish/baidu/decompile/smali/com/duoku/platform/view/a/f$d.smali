.class Lcom/duoku/platform/view/a/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/f;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/a/f;)V
    .registers 2

    .prologue
    .line 993
    iput-object p1, p0, Lcom/duoku/platform/view/a/f$d;->a:Lcom/duoku/platform/view/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/a/f;Lcom/duoku/platform/view/a/f$d;)V
    .registers 3

    .prologue
    .line 993
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/f$d;-><init>(Lcom/duoku/platform/view/a/f;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 999
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$d;->a:Lcom/duoku/platform/view/a/f;

    invoke-static {p2}, Lcom/duoku/a/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/duoku/a/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;Lcom/duoku/a/a/a/a/a;)V

    .line 1000
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/duoku/platform/view/a/f$d;->a:Lcom/duoku/platform/view/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/f;->a(Lcom/duoku/platform/view/a/f;Lcom/duoku/a/a/a/a/a;)V

    .line 1006
    return-void
.end method

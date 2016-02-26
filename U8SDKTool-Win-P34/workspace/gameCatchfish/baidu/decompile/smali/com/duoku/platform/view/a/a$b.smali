.class Lcom/duoku/platform/view/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/a;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/view/a/a;)V
    .registers 2

    .prologue
    .line 743
    iput-object p1, p0, Lcom/duoku/platform/view/a/a$b;->a:Lcom/duoku/platform/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/view/a/a;Lcom/duoku/platform/view/a/a$b;)V
    .registers 3

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/a$b;-><init>(Lcom/duoku/platform/view/a/a;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 749
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$b;->a:Lcom/duoku/platform/view/a/a;

    invoke-static {p2}, Lcom/duoku/a/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/duoku/a/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/a;->a(Lcom/duoku/platform/view/a/a;Lcom/duoku/a/a/a/a/a;)V

    .line 750
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 755
    iget-object v0, p0, Lcom/duoku/platform/view/a/a$b;->a:Lcom/duoku/platform/view/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/a/a;->a(Lcom/duoku/platform/view/a/a;Lcom/duoku/a/a/a/a/a;)V

    .line 756
    return-void
.end method

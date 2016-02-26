.class public Lcom/duoku/platform/view/user/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/user/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/a;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/user/a;)V
    .registers 2

    .prologue
    .line 410
    iput-object p1, p0, Lcom/duoku/platform/view/user/a$b;->a:Lcom/duoku/platform/view/user/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .prologue
    .line 416
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$b;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {p2}, Lcom/duoku/a/a/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/duoku/a/a/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->a(Lcom/duoku/platform/view/user/a;Lcom/duoku/a/a/a/a/a;)V

    .line 417
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .prologue
    .line 422
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$b;->a:Lcom/duoku/platform/view/user/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/view/user/a;->a(Lcom/duoku/platform/view/user/a;Lcom/duoku/a/a/a/a/a;)V

    .line 423
    return-void
.end method

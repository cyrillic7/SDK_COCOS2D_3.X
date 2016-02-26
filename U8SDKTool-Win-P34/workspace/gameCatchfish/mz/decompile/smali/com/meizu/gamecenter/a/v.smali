.class final Lcom/meizu/gamecenter/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/gamecenter/sdk/c;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-static {p1}, Lcom/meizu/c/e;->a(Landroid/os/IBinder;)Lcom/meizu/c/d;

    move-result-object v0

    return-object v0
.end method

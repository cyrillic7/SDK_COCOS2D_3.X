.class Lcom/qbao/core/c/c$4;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/core/c/c;->a(Lcom/qbao/core/c/a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic S:Lcom/qbao/core/c/c;

.field private final synthetic T:Lcom/qbao/core/c/a;

.field private final synthetic U:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/c;Lcom/qbao/core/c/a;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/core/c/c$4;->S:Lcom/qbao/core/c/c;

    iput-object p2, p0, Lcom/qbao/core/c/c$4;->T:Lcom/qbao/core/c/a;

    iput-object p3, p0, Lcom/qbao/core/c/c$4;->U:Ljava/lang/Runnable;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/qbao/core/c/c$4;->T:Lcom/qbao/core/c/a;

    invoke-virtual {v0}, Lcom/qbao/core/c/a;->z()V

    .line 203
    iget-object v0, p0, Lcom/qbao/core/c/c$4;->S:Lcom/qbao/core/c/c;

    invoke-static {v0}, Lcom/qbao/core/c/c;->a(Lcom/qbao/core/c/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/core/c/c$4;->U:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

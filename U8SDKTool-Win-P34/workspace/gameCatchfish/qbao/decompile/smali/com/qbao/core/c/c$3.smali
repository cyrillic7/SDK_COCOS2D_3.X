.class Lcom/qbao/core/c/c$3;
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


# direct methods
.method constructor <init>(Lcom/qbao/core/c/c;Lcom/qbao/core/c/a;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/core/c/c$3;->S:Lcom/qbao/core/c/c;

    iput-object p2, p0, Lcom/qbao/core/c/c$3;->T:Lcom/qbao/core/c/a;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/qbao/core/c/c$3;->T:Lcom/qbao/core/c/a;

    invoke-virtual {v0}, Lcom/qbao/core/c/a;->x()V

    .line 197
    return-void
.end method

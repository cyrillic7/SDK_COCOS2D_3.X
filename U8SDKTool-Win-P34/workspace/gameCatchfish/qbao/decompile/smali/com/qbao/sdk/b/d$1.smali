.class Lcom/qbao/sdk/b/d$1;
.super Ljava/lang/Thread;
.source "NetRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/b/d;->ay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dB:Lcom/qbao/sdk/b/d;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/b/d;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/b/d$1;->dB:Lcom/qbao/sdk/b/d;

    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qbao/sdk/b/d$1;->dB:Lcom/qbao/sdk/b/d;

    invoke-virtual {v0}, Lcom/qbao/sdk/b/d;->y()V

    .line 42
    return-void
.end method

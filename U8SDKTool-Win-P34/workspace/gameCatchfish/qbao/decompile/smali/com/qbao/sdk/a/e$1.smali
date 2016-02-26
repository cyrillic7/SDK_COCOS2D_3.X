.class Lcom/qbao/sdk/a/e$1;
.super Ljava/lang/Object;
.source "QbaoPayMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/e;->ah()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic do:Lcom/qbao/sdk/a/e;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/a/e;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/a/e$1;->do:Lcom/qbao/sdk/a/e;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/qbao/sdk/a/e$1;->do:Lcom/qbao/sdk/a/e;

    invoke-virtual {v0}, Lcom/qbao/sdk/a/e;->ai()Lcom/qbao/sdk/d/a;

    .line 152
    return-void
.end method

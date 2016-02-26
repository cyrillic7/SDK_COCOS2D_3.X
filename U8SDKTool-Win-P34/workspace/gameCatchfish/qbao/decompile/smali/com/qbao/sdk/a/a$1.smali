.class Lcom/qbao/sdk/a/a$1;
.super Ljava/lang/Object;
.source "GameLogin.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cX:Lcom/qbao/sdk/a/a;

.field private final synthetic cY:Lcom/qbao/core/a/b;

.field private final synthetic cZ:Ljava/lang/String;

.field private final synthetic da:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/a/a;Lcom/qbao/core/a/b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/a/a$1;->cX:Lcom/qbao/sdk/a/a;

    iput-object p2, p0, Lcom/qbao/sdk/a/a$1;->cY:Lcom/qbao/core/a/b;

    iput-object p3, p0, Lcom/qbao/sdk/a/a$1;->cZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/qbao/sdk/a/a$1;->da:Ljava/lang/String;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/qbao/sdk/a/a$1;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 96
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 100
    if-eqz p1, :cond_b

    .line 101
    iget-object v0, p0, Lcom/qbao/sdk/a/a$1;->cX:Lcom/qbao/sdk/a/a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/a/a;->a(Lcom/qbao/sdk/a/a;Ljava/lang/String;)V

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/qbao/sdk/a/a$1;->cX:Lcom/qbao/sdk/a/a;

    iget-object v1, p0, Lcom/qbao/sdk/a/a$1;->cZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/qbao/sdk/a/a$1;->da:Ljava/lang/String;

    iget-object v3, p0, Lcom/qbao/sdk/a/a$1;->cY:Lcom/qbao/core/a/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/qbao/sdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 104
    return-void
.end method

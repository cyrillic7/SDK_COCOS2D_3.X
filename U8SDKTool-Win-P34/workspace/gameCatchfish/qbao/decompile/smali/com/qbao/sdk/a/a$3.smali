.class Lcom/qbao/sdk/a/a$3;
.super Ljava/lang/Object;
.source "GameLogin.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/a/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
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
.method constructor <init>(Lcom/qbao/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/a/a$3;->cX:Lcom/qbao/sdk/a/a;

    iput-object p2, p0, Lcom/qbao/sdk/a/a$3;->cZ:Ljava/lang/String;

    iput-object p3, p0, Lcom/qbao/sdk/a/a$3;->da:Ljava/lang/String;

    iput-object p4, p0, Lcom/qbao/sdk/a/a$3;->cY:Lcom/qbao/core/a/b;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/qbao/sdk/a/a$3;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/qbao/sdk/a/a$3;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 171
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 160
    check-cast p1, Ljava/lang/String;

    .line 161
    invoke-static {p1}, Lcom/qbao/sdk/a/a;->V(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/qbao/sdk/a/a$3;->cX:Lcom/qbao/sdk/a/a;

    iget-object v1, p0, Lcom/qbao/sdk/a/a$3;->cZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/qbao/sdk/a/a$3;->da:Ljava/lang/String;

    iget-object v3, p0, Lcom/qbao/sdk/a/a$3;->cY:Lcom/qbao/core/a/b;

    invoke-static {v0, v1, v2, v3}, Lcom/qbao/sdk/a/a;->a(Lcom/qbao/sdk/a/a;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V

    .line 164
    return-void
.end method

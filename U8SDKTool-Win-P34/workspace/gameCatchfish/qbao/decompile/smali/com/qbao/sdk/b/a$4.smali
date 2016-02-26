.class Lcom/qbao/sdk/b/a$4;
.super Lcom/qbao/sdk/b/c;
.source "AccountRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic db:Lcom/qbao/core/a/c;


# direct methods
.method constructor <init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/c;)V
    .registers 3

    .prologue
    .line 1
    iput-object p2, p0, Lcom/qbao/sdk/b/a$4;->db:Lcom/qbao/core/a/c;

    .line 148
    invoke-direct {p0, p1}, Lcom/qbao/sdk/b/c;-><init>(Lcom/qbao/core/c/f;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/qbao/sdk/b/a$4;->db:Lcom/qbao/core/a/c;

    if-eqz v0, :cond_9

    .line 170
    iget-object v0, p0, Lcom/qbao/sdk/b/a$4;->db:Lcom/qbao/core/a/c;

    invoke-virtual {v0, p2}, Lcom/qbao/core/a/c;->a(Ljava/lang/String;)V

    .line 172
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 159
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    .line 160
    check-cast p1, Lorg/json/JSONObject;

    .line 161
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/qbao/sdk/b/a$4;->db:Lcom/qbao/core/a/c;

    if-eqz v1, :cond_15

    .line 163
    iget-object v1, p0, Lcom/qbao/sdk/b/a$4;->db:Lcom/qbao/core/a/c;

    invoke-virtual {v1, v0}, Lcom/qbao/core/a/c;->b(Ljava/lang/String;)V

    .line 166
    :cond_15
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    const-string v0, "POST"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "http://testm.qbao.com/api/v30/account4Client/resetLoginPwd3v"

    return-object v0
.end method

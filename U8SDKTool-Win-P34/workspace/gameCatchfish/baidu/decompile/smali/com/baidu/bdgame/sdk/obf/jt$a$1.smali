.class final Lcom/baidu/bdgame/sdk/obf/jt$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/jt$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/bdgame/sdk/obf/n",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/jt$a;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/jt$a;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jt$a$1;->a:Lcom/baidu/bdgame/sdk/obf/jt$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 123
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jt$a$1;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 128
    if-nez p1, :cond_23

    if-eqz p3, :cond_23

    .line 129
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jt$a$1;->a:Lcom/baidu/bdgame/sdk/obf/jt$a;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jt$a;->a(Lcom/baidu/bdgame/sdk/obf/jt$a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 130
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jt$a$1;->a:Lcom/baidu/bdgame/sdk/obf/jt$a;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/jt$a;->a:Lcom/baidu/bdgame/sdk/obf/jt;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jt$a$1;->a:Lcom/baidu/bdgame/sdk/obf/jt$a;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jt$a;->a(Lcom/baidu/bdgame/sdk/obf/jt$a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jt$a$1;->a:Lcom/baidu/bdgame/sdk/obf/jt$a;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/jt$a;->b(Lcom/baidu/bdgame/sdk/obf/jt$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    :cond_23
    return-void
.end method

.class final Lcom/baidu/bdgame/sdk/obf/dn$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/dn$b;->a()V
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
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dn$b;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/dn$b;)V
    .registers 2

    .prologue
    .line 137
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dn$b$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 137
    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/dn$b$1;->a(ILjava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(ILjava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 142
    if-nez p1, :cond_23

    if-eqz p3, :cond_23

    .line 143
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$b$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$b;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/dn$b;->a(Lcom/baidu/bdgame/sdk/obf/dn$b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dn$b$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$b;

    iget-object v0, v0, Lcom/baidu/bdgame/sdk/obf/dn$b;->a:Lcom/baidu/bdgame/sdk/obf/dn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/dn$b$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$b;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/dn$b;->a(Lcom/baidu/bdgame/sdk/obf/dn$b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/dn$b$1;->a:Lcom/baidu/bdgame/sdk/obf/dn$b;

    invoke-static {v2}, Lcom/baidu/bdgame/sdk/obf/dn$b;->b(Lcom/baidu/bdgame/sdk/obf/dn$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/dn;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    :cond_23
    return-void
.end method

.class final Lcom/baidu/bdgame/sdk/obf/ml$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ml;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/ml;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ml;Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 152
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ml$2;->b:Lcom/baidu/bdgame/sdk/obf/ml;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/ml$2;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ml$2;->b:Lcom/baidu/bdgame/sdk/obf/ml;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/ml$2;->a:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/ml;->a(Lcom/baidu/bdgame/sdk/obf/ml;Lorg/json/JSONObject;)V

    .line 157
    return-void
.end method

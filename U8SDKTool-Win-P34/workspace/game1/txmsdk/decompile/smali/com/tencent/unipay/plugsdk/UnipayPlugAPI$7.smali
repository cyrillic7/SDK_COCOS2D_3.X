.class Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;
.super Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;
.source "UnipayPlugAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->payNet(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;


# direct methods
.method constructor <init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    .line 1095
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UnipayNetServiceError(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "reqType"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 1120
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1123
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "resultCode"

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_NETWORK_SYSTEM:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$24(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1124
    const-string v2, "resultMsg"

    const-string v3, "network error"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_17} :catch_21

    .line 1130
    :goto_17
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->callBack(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$20(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Ljava/lang/String;)V

    .line 1131
    return-void

    .line 1126
    :catch_21
    move-exception v0

    .line 1128
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17
.end method

.method public UnipayNetServiceFinish(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "reqType"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->callBack(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$20(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Ljava/lang/String;)V

    .line 1116
    return-void
.end method

.method public UnipayNetServiceStop(Ljava/lang/String;)V
    .registers 6
    .param p1, "reqType"    # Ljava/lang/String;

    .prologue
    .line 1100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1103
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "resultCode"

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_USER_CANCEL:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$23(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1104
    const-string v2, "resultMsg"

    const-string v3, "user cancel"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_17} :catch_21

    .line 1110
    :goto_17
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$7;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->callBack(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$20(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Ljava/lang/String;)V

    .line 1111
    return-void

    .line 1106
    :catch_21
    move-exception v0

    .line 1108
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17
.end method

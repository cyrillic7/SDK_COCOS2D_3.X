.class Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$3;
.super Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;
.source "UnipayPlugAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;
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
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$3;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    .line 1135
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UnipayCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V
    .registers 7
    .param p1, "response"    # Lcom/tencent/unipay/plugsdk/UnipayResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1154
    const-string v0, ""

    .line 1156
    .local v0, "backInfo":Ljava/lang/String;
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1157
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v3, "resultCode"

    iget v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1158
    const-string v3, "resultMsg"

    iget-object v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1159
    const-string v3, "resultInerCode"

    iget v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultInerCode:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1160
    const-string v3, "realSaveNum"

    iget v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->realSaveNum:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1161
    const-string v3, "payChannel"

    iget v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payChannel:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1162
    const-string v3, "payState"

    iget v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1163
    const-string v3, "provideState"

    iget v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->provideState:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1164
    const-string v3, "extendInfo"

    iget-object v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->extendInfo:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1165
    const-string v3, "payReserve1"

    iget-object v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve1:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1166
    const-string v3, "payReserve2"

    iget-object v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve2:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1167
    const-string v3, "payReserve3"

    iget-object v4, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payReserve3:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1168
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_57} :catch_5e

    move-result-object v0

    .line 1172
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :goto_58
    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$3;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->callBack(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$20(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Ljava/lang/String;)V

    .line 1173
    return-void

    .line 1169
    :catch_5e
    move-exception v1

    .line 1170
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_58
.end method

.method public UnipayNeedLogin()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1139
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1142
    .local v1, "obj":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "resultCode"

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$3;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->RET_LOGINOUT:Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$19(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1143
    const-string v2, "resultMsg"

    const-string v3, "login out"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_17} :catch_21

    .line 1149
    :goto_17
    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$3;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->callBack(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$20(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Ljava/lang/String;)V

    .line 1150
    return-void

    .line 1145
    :catch_21
    move-exception v0

    .line 1147
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_17
.end method

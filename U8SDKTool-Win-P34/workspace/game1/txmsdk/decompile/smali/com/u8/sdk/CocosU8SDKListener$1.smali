.class Lcom/u8/sdk/CocosU8SDKListener$1;
.super Ljava/lang/Object;
.source "CocosU8SDKListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/CocosU8SDKListener;->onResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/CocosU8SDKListener;

.field private final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/u8/sdk/CocosU8SDKListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/CocosU8SDKListener$1;->this$0:Lcom/u8/sdk/CocosU8SDKListener;

    iput p2, p0, Lcom/u8/sdk/CocosU8SDKListener$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget v2, p0, Lcom/u8/sdk/CocosU8SDKListener$1;->val$code:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "isSupportExit"

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v3

    const-string v4, "exit"

    invoke-virtual {v3, v4}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSupportAccountCenter"

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v3

    const-string v4, "showAccountCenter"

    invoke-virtual {v3, v4}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSupportLogout"

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v3

    const-string v4, "logout"

    invoke-virtual {v3, v4}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/u8/sdk/CocosU8SDKListener$1;->this$0:Lcom/u8/sdk/CocosU8SDKListener;

    # getter for: Lcom/u8/sdk/CocosU8SDKListener;->context:Lcom/u8/sdk/U8CocosActivity;
    invoke-static {v2}, Lcom/u8/sdk/CocosU8SDKListener;->access$0(Lcom/u8/sdk/CocosU8SDKListener;)Lcom/u8/sdk/U8CocosActivity;

    move-result-object v2

    const-string v3, "OnU8InitSuc"

    invoke-virtual {v2, v3, v1}, Lcom/u8/sdk/U8CocosActivity;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/u8/sdk/CocosU8SDKListener$1;->this$0:Lcom/u8/sdk/CocosU8SDKListener;

    # getter for: Lcom/u8/sdk/CocosU8SDKListener;->context:Lcom/u8/sdk/U8CocosActivity;
    invoke-static {v2}, Lcom/u8/sdk/CocosU8SDKListener;->access$0(Lcom/u8/sdk/CocosU8SDKListener;)Lcom/u8/sdk/U8CocosActivity;

    move-result-object v2

    const-string v3, "SDK\u521d\u59cb\u5316\u5931\u8d25"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/U8CocosActivity;->tip(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/u8/sdk/CocosU8SDKListener$1;->this$0:Lcom/u8/sdk/CocosU8SDKListener;

    # getter for: Lcom/u8/sdk/CocosU8SDKListener;->context:Lcom/u8/sdk/U8CocosActivity;
    invoke-static {v2}, Lcom/u8/sdk/CocosU8SDKListener;->access$0(Lcom/u8/sdk/CocosU8SDKListener;)Lcom/u8/sdk/U8CocosActivity;

    move-result-object v2

    const-string v3, "\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v2, v3}, Lcom/u8/sdk/U8CocosActivity;->tip(Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5 -> :sswitch_0
        0xb -> :sswitch_3
    .end sparse-switch
.end method

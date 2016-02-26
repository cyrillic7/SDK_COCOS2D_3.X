.class public Lcom/u8/sdk/ndk/AndroidNDKHelper;
.super Ljava/lang/Object;
.source "AndroidNDKHelper.java"


# static fields
.field private static NDKHelperHandler:Landroid/os/Handler; = null

.field private static __CALLED_METHOD_PARAMS__:Ljava/lang/String; = null

.field private static __CALLED_METHOD__:Ljava/lang/String; = null

.field private static final __MSG_FROM_CPP__:I = 0x5

.field private static callHandler:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/u8/sdk/ndk/AndroidNDKHelper;->callHandler:Ljava/lang/Object;

    sput-object v0, Lcom/u8/sdk/ndk/AndroidNDKHelper;->NDKHelperHandler:Landroid/os/Handler;

    const-string v0, "calling_method_name"

    sput-object v0, Lcom/u8/sdk/ndk/AndroidNDKHelper;->__CALLED_METHOD__:Ljava/lang/String;

    const-string v0, "calling_method_params"

    sput-object v0, Lcom/u8/sdk/ndk/AndroidNDKHelper;->__CALLED_METHOD_PARAMS__:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CPPNativeCallHandler(Ljava/lang/String;)V
.end method

.method public static ReceiveCppMessage(Ljava/lang/String;)V
    .locals 11
    .param p0    # Ljava/lang/String;

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/u8/sdk/ndk/AndroidNDKHelper;->__CALLED_METHOD__:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/u8/sdk/ndk/AndroidNDKHelper;->__CALLED_METHOD__:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const/4 v4, 0x0

    :try_start_1
    sget-object v7, Lcom/u8/sdk/ndk/AndroidNDKHelper;->__CALLED_METHOD_PARAMS__:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    :goto_0
    :try_start_2
    sget-object v7, Lcom/u8/sdk/ndk/AndroidNDKHelper;->callHandler:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Lorg/json/JSONObject;

    aput-object v10, v8, v9

    invoke-virtual {v7, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/ndk/NDKMessage;

    invoke-direct {v2}, Lcom/u8/sdk/ndk/NDKMessage;-><init>()V

    iput-object v1, v2, Lcom/u8/sdk/ndk/NDKMessage;->methodToCall:Ljava/lang/reflect/Method;

    iput-object v4, v2, Lcom/u8/sdk/ndk/NDKMessage;->methodParams:Lorg/json/JSONObject;

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/4 v7, 0x5

    iput v7, v5, Landroid/os/Message;->what:I

    iput-object v2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v7, Lcom/u8/sdk/ndk/AndroidNDKHelper;->NDKHelperHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_3
    move-exception v7

    goto :goto_0
.end method

.method public static SendMessageWithParameters(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v2, Lcom/u8/sdk/ndk/AndroidNDKHelper;->__CALLED_METHOD__:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/u8/sdk/ndk/AndroidNDKHelper;->__CALLED_METHOD_PARAMS__:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/u8/sdk/ndk/AndroidNDKHelper;->CPPNativeCallHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SetNDKReceiver(Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Object;

    sput-object p0, Lcom/u8/sdk/ndk/AndroidNDKHelper;->callHandler:Ljava/lang/Object;

    new-instance v0, Lcom/u8/sdk/ndk/AndroidNDKHelper$1;

    invoke-direct {v0}, Lcom/u8/sdk/ndk/AndroidNDKHelper$1;-><init>()V

    sput-object v0, Lcom/u8/sdk/ndk/AndroidNDKHelper;->NDKHelperHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/u8/sdk/ndk/AndroidNDKHelper;->callHandler:Ljava/lang/Object;

    return-object v0
.end method

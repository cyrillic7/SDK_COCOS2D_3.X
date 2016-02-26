.class Lcom/u8/sdk/U8CocosActivity$2;
.super Ljava/lang/Object;
.source "U8CocosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/U8CocosActivity;->loginCustom(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8CocosActivity;

.field private final synthetic val$data:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8CocosActivity;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8CocosActivity$2;->this$0:Lcom/u8/sdk/U8CocosActivity;

    iput-object p2, p0, Lcom/u8/sdk/U8CocosActivity$2;->val$data:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v2, p0, Lcom/u8/sdk/U8CocosActivity$2;->val$data:Lorg/json/JSONObject;

    const-string v3, "customData"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "U8SDK"

    const-string v3, "loginCustom :: customData is not specified."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/u8/sdk/plugin/U8User;->login(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

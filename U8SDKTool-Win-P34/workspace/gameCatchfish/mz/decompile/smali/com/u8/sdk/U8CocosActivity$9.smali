.class Lcom/u8/sdk/U8CocosActivity$9;
.super Ljava/lang/Object;
.source "U8CocosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/U8CocosActivity;->sendCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8CocosActivity;

.field private final synthetic val$jsonParams:Lorg/json/JSONObject;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8CocosActivity;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8CocosActivity$9;->this$0:Lcom/u8/sdk/U8CocosActivity;

    iput-object p2, p0, Lcom/u8/sdk/U8CocosActivity$9;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/u8/sdk/U8CocosActivity$9;->val$jsonParams:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8CocosActivity$9;->val$name:Ljava/lang/String;

    iget-object v1, p0, Lcom/u8/sdk/U8CocosActivity$9;->val$jsonParams:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/u8/sdk/ndk/AndroidNDKHelper;->SendMessageWithParameters(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.class Lcom/u8/sdk/U8CocosActivity$6;
.super Ljava/lang/Object;
.source "U8CocosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/U8CocosActivity;->submitExtraData(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8CocosActivity;

.field private final synthetic val$extraData:Lcom/u8/sdk/UserExtraData;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8CocosActivity;Lcom/u8/sdk/UserExtraData;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8CocosActivity$6;->this$0:Lcom/u8/sdk/U8CocosActivity;

    iput-object p2, p0, Lcom/u8/sdk/U8CocosActivity$6;->val$extraData:Lcom/u8/sdk/UserExtraData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/U8CocosActivity$6;->val$extraData:Lcom/u8/sdk/UserExtraData;

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->submitExtraData(Lcom/u8/sdk/UserExtraData;)V

    return-void
.end method

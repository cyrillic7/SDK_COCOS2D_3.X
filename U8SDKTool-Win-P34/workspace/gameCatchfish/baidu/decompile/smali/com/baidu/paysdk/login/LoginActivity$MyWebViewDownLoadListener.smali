.class Lcom/baidu/paysdk/login/LoginActivity$MyWebViewDownLoadListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewDownLoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/login/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/login/LoginActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/login/LoginActivity$MyWebViewDownLoadListener;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/login/LoginActivity;Lcom/baidu/paysdk/login/LoginActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/login/LoginActivity$MyWebViewDownLoadListener;-><init>(Lcom/baidu/paysdk/login/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/baidu/paysdk/login/LoginActivity$MyWebViewDownLoadListener;->this$0:Lcom/baidu/paysdk/login/LoginActivity;

    invoke-virtual {v0, v1}, Lcom/baidu/paysdk/login/LoginActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

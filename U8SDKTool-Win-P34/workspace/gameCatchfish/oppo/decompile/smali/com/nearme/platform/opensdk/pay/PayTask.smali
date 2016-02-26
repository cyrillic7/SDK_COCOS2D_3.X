.class public Lcom/nearme/platform/opensdk/pay/PayTask;
.super Ljava/lang/Object;
.source "PayTask.java"


# static fields
.field private static final ACTION_NOTIFY_PAY_RESULT:Ljava/lang/String; = "nearme.pay.response"

.field public static final HOST_BACKGROUND_CALL_ACTION_SERVICE:Ljava/lang/String; = "com.oppo.action.PAY_ACTION"

.field public static final Product_Dsec_MAX_LENGTH:I = 0x31

.field public static final Product_Name_MAX_LENGTH:I = 0x14

.field public static final REQUEST_CODE:I = 0x3ea

.field public static final RESULT_CODE:I = 0x1708

.field public static final RESULT_CODE_CANCEL_BU:I = 0x2739

.field public static final RESULT_CODE_IU_APP:I = 0x2738

.field private static final SINGLE_PAY_STARTUP_ACTION:Ljava/lang/String; = "nearme.plugin.host.startup.action.single_pay"

.field private static final STANDARD_STARTUP_ACTION:Ljava/lang/String; = "nearme.plugin.host.startup.action.full_pay"

.field private static final TAG:Ljava/lang/String;

.field public static df:Ljava/text/DecimalFormat;


# instance fields
.field public mActivity:Landroid/content/Context;

.field public mChargeLimit:F

.field private mCurOperateType:I

.field public mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

.field private mThemeValue:I

.field update:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    const-class v0, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->df:Ljava/text/DecimalFormat;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nearme/platform/opensdk/pay/PayRequest;I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mChargeLimit:F

    .line 77
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mCurOperateType:I

    .line 78
    iput v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    .line 80
    iput-boolean v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->update:Z

    .line 97
    iput-object p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    .line 99
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iput p3, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mRequestCode:I

    .line 100
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v0, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z

    if-eqz v0, :cond_30

    .line 101
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->getRandomToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    .line 103
    :cond_30
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 104
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    .line 106
    :cond_42
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPayRequest.mToken:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iput v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    .line 108
    return-void
.end method

.method static synthetic access$0(Lcom/nearme/platform/opensdk/pay/PayTask;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->copyPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/nearme/platform/opensdk/pay/PayTask;)V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->notifyAppInstallOrUpdate()V

    return-void
.end method

.method private checkParamsValid(Lcom/nearme/platform/opensdk/pay/PayRequest;)Z
    .registers 10

    .prologue
    const v7, 0x461c3ff6

    const v6, 0x3c23d70a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 284
    .line 285
    const-string v0, ""

    .line 287
    sget-object v3, Lcom/nearme/platform/opensdk/pay/PayTask;->df:Ljava/text/DecimalFormat;

    iget v4, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    .line 288
    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    cmpl-float v3, v3, v7

    if-gtz v3, :cond_29

    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAmount:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_37

    .line 289
    :cond_29
    const-string v0, "\u652f\u4ed8\u91d1\u989d\u9519\u8bef\uff0c\u6b63\u786e\u91d1\u989d\u8303\u56f4\u4e3a:0.01\u5143~9999.99\u5143"

    .line 337
    :goto_2b
    if-nez v1, :cond_36

    .line 338
    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    :cond_36
    return v1

    .line 291
    :cond_37
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 292
    const-string v0, "mPartnerId \u4e3a\u7a7a"

    goto :goto_2b

    .line 294
    :cond_42
    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChargeLimit:F

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_4e

    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChargeLimit:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_51

    .line 295
    :cond_4e
    const-string v0, "\u9650\u989d\u8303\u56f4:0.01f\u5143~9999.99\u5143"

    goto :goto_2b

    .line 297
    :cond_51
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mNotifyUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 298
    const-string v0, "mNotifyUrl \u4e3a\u7a7a"

    goto :goto_2b

    .line 300
    :cond_5c
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mToken:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 301
    const-string v0, "mToken \u4e3a\u7a7a"

    goto :goto_2b

    .line 303
    :cond_67
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 304
    const-string v0, "mPackageName \u4e3a\u7a7a"

    goto :goto_2b

    .line 306
    :cond_72
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mAppVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 307
    const-string v0, "mAppVersion \u4e3a\u7a7a"

    goto :goto_2b

    .line 309
    :cond_7d
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mCurrencyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 310
    const-string v0, "mCurrencyName \u4e3a\u7a7a"

    goto :goto_2b

    .line 312
    :cond_88
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSource:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 313
    const-string v0, "mSource \u4e3a\u7a7a"

    goto :goto_2b

    .line 315
    :cond_93
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 316
    const-string v0, "\u5546\u54c1\u540d\u79f0 \u4e3a\u7a7a"

    goto :goto_2b

    .line 318
    :cond_9e
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_ab

    .line 319
    const-string v0, "\u5546\u54c1\u540d\u79f0 \u957f\u5ea6\u8fc7\u957f"

    goto :goto_2b

    .line 321
    :cond_ab
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 322
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mProductDesc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x31

    if-le v3, v4, :cond_c1

    .line 323
    const-string v0, "\u5546\u54c1\u63cf\u8ff0\u957f\u5ea6\u8fc7\u957f"

    goto/16 :goto_2b

    .line 325
    :cond_c1
    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-eqz v3, :cond_d2

    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-eq v3, v2, :cond_d2

    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_d2

    .line 326
    const-string v0, "mType \u53ea\u80fd\u4e3a0\u30011\u30012"

    goto/16 :goto_2b

    .line 328
    :cond_d2
    iget v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mType:I

    if-ne v3, v2, :cond_ee

    .line 329
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 330
    const-string v0, "mType\u4e3a1\u65f6\u4e3a\u6d88\u8d39\uff0c\u9700\u63d0\u4f9b\u8ba2\u5355\u53f7"

    goto/16 :goto_2b

    .line 332
    :cond_e2
    iget-object v3, p1, Lcom/nearme/platform/opensdk/pay/PayRequest;->mSign:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 333
    const-string v0, "mType\u4e3a1\u65f6\u4e3a\u6d88\u8d39\uff0c\u9700\u63d0\u4f9b\u7b7e\u540d\u90e8\u5206"

    goto/16 :goto_2b

    :cond_ee
    move v1, v2

    goto/16 :goto_2b
.end method

.method private copyPackage()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 204
    const-string v1, "nearme.apk"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 205
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "tmp.apk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 208
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 209
    :goto_20
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_35

    .line 212
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 213
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 214
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 210
    :cond_35
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_20
.end method

.method private doTickerWithoutNoting()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 647
    .line 650
    const/4 v2, 0x0

    .line 651
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportSinglePayStartup()Z

    move-result v3

    .line 652
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->singleVersionCheck()Z

    move-result v4

    .line 653
    if-eqz v3, :cond_6c

    if-eqz v4, :cond_6c

    .line 654
    const-string v2, "com.nearme.atlas"

    move v3, v1

    .line 657
    :goto_12
    if-nez v3, :cond_15

    .line 673
    :goto_14
    return v0

    .line 660
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 662
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v2, "jump_plugin_id"

    const-string v4, "1001"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    const-string v2, "payParams"

    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v4}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v2, "operate_type"

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 668
    const-class v2, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "theme_value : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_65

    .line 670
    const-string v2, "theme_value"

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    :cond_65
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v1

    .line 673
    goto :goto_14

    :cond_6c
    move v3, v0

    goto :goto_12
.end method

.method private getRandomToken()Ljava/lang/String;
    .registers 7

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 112
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OFFLINE_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private notifyAppInstallOrUpdate()V
    .registers 4

    .prologue
    .line 117
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 119
    :try_start_5
    const-string v0, "errCode"

    const/16 v2, 0x2738

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v0, v0, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 121
    const-string v0, "order"

    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPartnerOrder:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1f} :catch_3e

    .line 126
    :cond_1f
    :goto_1f
    new-instance v0, Landroid/content/Intent;

    const-string v2, "nearme.pay.response"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v2, "response"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void

    .line 124
    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1f
.end method

.method private showInstallDialog()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    .line 169
    const v2, 0x1030075

    .line 168
    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 170
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 171
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 172
    const-string v1, "\u60a8\u5c1a\u672a\u5b89\u88c5\'\u5b89\u5168\u652f\u4ed8\'\u63a7\u4ef6\uff0c\u5b89\u88c5\u540e\u53ef\u7acb\u5373\u4f7f\u7528\u5145\u503c\u652f\u4ed8\u670d\u52a1\uff0c\u5e76\u4fdd\u8bc1\u8d26\u6237\u5b89\u5168\uff0c\u53d6\u6d88\u5219\u65e0\u6cd5\u652f\u4ed8\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    const-string v1, "\u7acb\u5373\u5b89\u88c5\uff08\u65e0\u9700\u4e0b\u8f7d\uff09"

    new-instance v2, Lcom/nearme/platform/opensdk/pay/PayTask$2;

    invoke-direct {v2, p0}, Lcom/nearme/platform/opensdk/pay/PayTask$2;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_35

    .line 195
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 197
    :cond_35
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 199
    return-void
.end method

.method private showUpdateDialog()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    .line 135
    const v2, 0x1030075

    .line 134
    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 136
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 138
    const-string v1, "\u60a8\u9700\u8981\u66f4\u65b0\'\u5b89\u5168\u652f\u4ed8\'\u63a7\u4ef6\uff0c\u66f4\u65b0\u540e\u53ef\u7acb\u5373\u4f7f\u7528\u5145\u503c\u652f\u4ed8\u670d\u52a1\uff0c\u5e76\u4fdd\u8bc1\u8d26\u6237\u5b89\u5168\uff0c\u53d6\u6d88\u5219\u65e0\u6cd5\u652f\u4ed8\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string v1, "\u7acb\u5373\u5b89\u88c5\uff08\u65e0\u9700\u4e0b\u8f7d\uff09"

    new-instance v2, Lcom/nearme/platform/opensdk/pay/PayTask$1;

    invoke-direct {v2, p0}, Lcom/nearme/platform/opensdk/pay/PayTask$1;-><init>(Lcom/nearme/platform/opensdk/pay/PayTask;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_35

    .line 160
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 162
    :cond_35
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 164
    return-void
.end method


# virtual methods
.method public directPay()Z
    .registers 7

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 475
    iput v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mCurOperateType:I

    .line 479
    const/4 v2, 0x0

    .line 480
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportStandardStartup()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->standVersionCheck()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 481
    const-string v2, "com.oppo.usercenter"

    move v3, v0

    move v4, v0

    move v5, v1

    .line 492
    :goto_17
    if-nez v5, :cond_4d

    .line 493
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 494
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "sd\u5361\u672a\u6302\u8f7d\uff0c\u65e0\u6cd5\u5b89\u88c5\u5b89\u5168\u652f\u4ed8\u63d2\u4ef6"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 524
    :goto_30
    return v0

    .line 484
    :cond_31
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportSinglePayStartup()Z

    move-result v4

    .line 485
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->singleVersionCheck()Z

    move-result v3

    .line 486
    if-eqz v4, :cond_cc

    if-eqz v3, :cond_cc

    .line 487
    const-string v2, "com.nearme.atlas"

    move v5, v1

    .line 488
    goto :goto_17

    .line 496
    :cond_41
    if-eqz v4, :cond_49

    if-nez v3, :cond_49

    .line 497
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showUpdateDialog()V

    goto :goto_30

    .line 500
    :cond_49
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V

    goto :goto_30

    .line 504
    :cond_4d
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "goto directPay:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :try_start_61
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 508
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v4, "jump_plugin_id"

    const-string v5, "1001"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    const-string v4, "payParams"

    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v5}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v4, "operate_type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 514
    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_97

    .line 515
    const-string v3, "theme_value"

    iget v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    :cond_97
    sget-object v3, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "goto directPay,send broadcast:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_b0} :catch_b3

    :goto_b0
    move v0, v1

    .line 524
    goto/16 :goto_30

    .line 520
    :catch_b3
    move-exception v0

    .line 521
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    sget-object v2, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "goto directPay exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :cond_cc
    move v5, v0

    goto/16 :goto_17
.end method

.method public iSupportSinglePay()Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 599
    .line 603
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportStandardStartup()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->standVersionCheck()Z

    move-result v1

    if-eqz v1, :cond_2a

    move v1, v0

    move v2, v0

    .line 614
    :cond_10
    :goto_10
    if-nez v3, :cond_44

    .line 615
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 616
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "sd\u5361\u672a\u6302\u8f7d\uff0c\u65e0\u6cd5\u5b89\u88c5\u5b89\u5168\u652f\u4ed8\u63d2\u4ef6"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 642
    :goto_29
    return v0

    .line 607
    :cond_2a
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportSinglePayStartup()Z

    move-result v2

    .line 608
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->singleVersionCheck()Z

    move-result v1

    .line 609
    if-eqz v2, :cond_36

    if-nez v1, :cond_10

    :cond_36
    move v3, v0

    goto :goto_10

    .line 618
    :cond_38
    if-eqz v2, :cond_40

    if-nez v1, :cond_40

    .line 619
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showUpdateDialog()V

    goto :goto_29

    .line 622
    :cond_40
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V

    goto :goto_29

    .line 628
    :cond_44
    :try_start_44
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->doTickerWithoutNoting()Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_8f

    .line 633
    :goto_47
    :try_start_47
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "com.nearme.atlas"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 634
    const-string v2, "single_pay_config"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 635
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-object v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mPackageName:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 636
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 637
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 638
    sget-object v2, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "package info :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const-string v2, "supportSiglePay"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_8d} :catch_94

    move-result v0

    goto :goto_29

    .line 630
    :catch_8f
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47

    .line 641
    :catch_94
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public pay()Z
    .registers 10

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 225
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-direct {p0, v0}, Lcom/nearme/platform/opensdk/pay/PayTask;->checkParamsValid(Lcom/nearme/platform/opensdk/pay/PayRequest;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 279
    :goto_a
    return v2

    .line 232
    :cond_b
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportStandardStartup()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->standVersionCheck()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 235
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    const-string v1, "goto usercenter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v0, "nearme.plugin.host.startup.action.full_pay"

    move v1, v2

    move v3, v2

    move v4, v5

    .line 248
    :goto_24
    sget-object v6, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "canPay\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-nez v4, :cond_75

    .line 250
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mounted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 251
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v1, "sd\u5361\u672a\u6302\u8f7d\uff0c\u65e0\u6cd5\u5b89\u88c5\u5b89\u5168\u652f\u4ed8\u63d2\u4ef6"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 239
    :cond_52
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportSinglePayStartup()Z

    move-result v3

    .line 240
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->singleVersionCheck()Z

    move-result v1

    .line 241
    if-eqz v3, :cond_d3

    if-eqz v1, :cond_d3

    .line 242
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    const-string v4, "goto altans"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "nearme.plugin.host.startup.action.single_pay"

    move v4, v5

    .line 244
    goto :goto_24

    .line 254
    :cond_69
    if-eqz v3, :cond_71

    if-nez v1, :cond_71

    .line 255
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showUpdateDialog()V

    goto :goto_a

    .line 258
    :cond_71
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V

    goto :goto_a

    .line 263
    :cond_75
    sget-object v1, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "goto pay \uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    const-string v2, "jump_plugin_id"

    const-string v3, "1001"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v2, "payParams"

    iget-object v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v3}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "charge_lower_limit"

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mChargeLimit:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 269
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 270
    const/high16 v0, 0x820000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 271
    iget v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c0

    .line 272
    const-string v0, "theme_value"

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    :cond_c0
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_cb

    .line 275
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    :cond_cb
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v5

    .line 279
    goto/16 :goto_a

    :cond_d3
    move v4, v2

    goto/16 :goto_24
.end method

.method public queryBalance()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 421
    iput v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mCurOperateType:I

    .line 425
    const/4 v2, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportStandardStartup()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->standVersionCheck()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 427
    const-string v2, "com.oppo.usercenter"

    move v3, v0

    move v4, v0

    move v5, v1

    .line 438
    :goto_16
    if-nez v5, :cond_4c

    .line 439
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 440
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "sd\u5361\u672a\u6302\u8f7d\uff0c\u65e0\u6cd5\u5b89\u88c5\u5b89\u5168\u652f\u4ed8\u63d2\u4ef6"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 465
    :goto_2f
    return v0

    .line 430
    :cond_30
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportSinglePayStartup()Z

    move-result v4

    .line 431
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->singleVersionCheck()Z

    move-result v3

    .line 432
    if-eqz v4, :cond_a9

    if-eqz v3, :cond_a9

    .line 433
    const-string v2, "com.nearme.atlas"

    move v5, v1

    .line 435
    goto :goto_16

    .line 443
    :cond_40
    if-eqz v4, :cond_48

    if-nez v3, :cond_48

    .line 444
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showUpdateDialog()V

    goto :goto_2f

    .line 447
    :cond_48
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V

    goto :goto_2f

    .line 451
    :cond_4c
    sget-object v0, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    const-string v3, "goto queryBalance"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 454
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const-string v2, "jump_plugin_id"

    const-string v4, "1001"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 456
    const-string v2, "payParams"

    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v4}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v2, "operate_type"

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 459
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 460
    const-class v2, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "theme_value : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a2

    .line 462
    const-string v2, "theme_value"

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    :cond_a2
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v1

    .line 465
    goto :goto_2f

    :cond_a9
    move v5, v0

    goto/16 :goto_16
.end method

.method public queryOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 363
    sget-object v2, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start query... payRequestId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",partnerorder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 365
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "payRequestId \u548c partnerOrderId\u4e0d\u80fd\u540c\u65f6\u4e3a\u7a7a!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_34
    const/4 v2, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->supportSinglePayStartup()Z

    move-result v4

    .line 372
    invoke-virtual {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->singleVersionCheck()Z

    move-result v5

    .line 373
    if-eqz v4, :cond_e7

    if-eqz v5, :cond_e7

    .line 374
    const-string v2, "com.nearme.atlas"

    move v3, v1

    .line 377
    :goto_44
    if-nez v3, :cond_6a

    .line 378
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 379
    iget-object v1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v2, "sd\u5361\u672a\u6302\u8f7d\uff0c\u65e0\u6cd5\u5b89\u88c5\u5b89\u5168\u652f\u4ed8\u63d2\u4ef6"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 412
    :goto_5d
    return v0

    .line 381
    :cond_5e
    if-eqz v4, :cond_66

    if-nez v5, :cond_66

    .line 382
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showUpdateDialog()V

    goto :goto_5d

    .line 385
    :cond_66
    invoke-direct {p0}, Lcom/nearme/platform/opensdk/pay/PayTask;->showInstallDialog()V

    goto :goto_5d

    .line 389
    :cond_6a
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oppo.action.PAY_ACTION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 391
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v2, "jump_plugin_id"

    const-string v4, "1001"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v2, "payParams"

    iget-object v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    invoke-virtual {v4}, Lcom/nearme/platform/opensdk/pay/PayRequest;->convert()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 395
    const-string v2, "payRequestId"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :goto_98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 400
    const-string v2, "partnerOrder"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :goto_a5
    const-string v2, "operate_type"

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 407
    const-class v2, Lcom/nearme/platform/opensdk/pay/PayTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "theme_value : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d4

    .line 409
    const-string v2, "theme_value"

    iget v3, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    :cond_d4
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v1

    .line 412
    goto :goto_5d

    .line 397
    :cond_db
    const-string v2, "payRequestId"

    invoke-virtual {v3, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 402
    :cond_e1
    const-string v2, "partnerOrder"

    invoke-virtual {v3, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a5

    :cond_e7
    move v3, v0

    goto/16 :goto_44
.end method

.method public setTheme(I)V
    .registers 2

    .prologue
    .line 350
    iput p1, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mThemeValue:I

    .line 351
    return-void
.end method

.method public singleVersionCheck()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 573
    :try_start_2
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 574
    const-string v3, "opay_version"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 575
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 576
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 577
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 578
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 579
    iget-object v5, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v6, "com.nearme.atlas"

    invoke-static {v5, v6}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 580
    iget-object v6, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget-boolean v6, v6, Lcom/nearme/platform/opensdk/pay/PayRequest;->mIsSinglePay:Z
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2b} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_3d

    if-eqz v6, :cond_34

    .line 581
    if-ge v5, v3, :cond_32

    if-ge v5, v2, :cond_32

    .line 588
    :cond_31
    :goto_31
    return v0

    :cond_32
    move v0, v1

    .line 581
    goto :goto_31

    .line 583
    :cond_34
    if-ge v5, v4, :cond_38

    if-lt v5, v2, :cond_31

    :cond_38
    move v0, v1

    goto :goto_31

    .line 586
    :catch_3a
    move-exception v0

    move v0, v1

    goto :goto_31

    .line 588
    :catch_3d
    move-exception v0

    move v0, v1

    goto :goto_31
.end method

.method public standVersionCheck()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 545
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mPayRequest:Lcom/nearme/platform/opensdk/pay/PayRequest;

    iget v2, v2, Lcom/nearme/platform/opensdk/pay/PayRequest;->mChargeLimit:F

    const v3, 0x3c23d70a

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_16

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mCurOperateType:I

    if-eq v2, v0, :cond_16

    iget v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mCurOperateType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_29

    .line 546
    :cond_16
    sget-object v2, Lcom/nearme/platform/opensdk/pay/PayTask;->TAG:Ljava/lang/String;

    const-string v3, "supportStandardStartup\uff1acheck 350 "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :try_start_1d
    iget-object v2, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    const-string v3, "com.oppo.usercenter"

    invoke-static {v2, v3}, Lcom/nearme/platform/opensdk/pay/Utils;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_2c

    move-result v2

    .line 549
    const/16 v3, 0x15e

    if-lt v2, v3, :cond_2a

    .line 554
    :cond_29
    :goto_29
    return v0

    :cond_2a
    move v0, v1

    .line 549
    goto :goto_29

    .line 551
    :catch_2c
    move-exception v0

    move v0, v1

    goto :goto_29
.end method

.method public supportSinglePayStartup()Z
    .registers 4

    .prologue
    .line 558
    iget-object v0, p0, Lcom/nearme/platform/opensdk/pay/PayTask;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 559
    new-instance v1, Landroid/content/Intent;

    const-string v2, "nearme.plugin.host.startup.action.single_pay"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 560
    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public supportStandardStartup()Z
    .registers 2

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

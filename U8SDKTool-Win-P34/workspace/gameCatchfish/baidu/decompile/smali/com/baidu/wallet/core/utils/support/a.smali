.class Lcom/baidu/wallet/core/utils/support/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/core/utils/support/SmsContent;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/core/utils/support/SmsContent;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->a(Lcom/baidu/wallet/core/utils/support/SmsContent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "address"

    aput-object v0, v2, v4

    const/4 v0, 0x2

    const-string v3, "body"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "read"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "date"

    aput-object v3, v2, v0

    :try_start_30
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->b(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date desc"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_41} :catch_151
    .catchall {:try_start_30 .. :try_end_41} :catchall_163

    move-result-object v1

    if-nez v1, :cond_4f

    if-eqz v1, :cond_f

    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_f

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_4f
    :try_start_4f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_144

    const-string v0, "date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_144

    const-string v2, "body"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_74} :catch_172
    .catchall {:try_start_4f .. :try_end_74} :catchall_170

    move-result-wide v4

    const-wide/32 v6, 0x15f90

    cmp-long v0, v4, v6

    if-lez v0, :cond_87

    if-eqz v1, :cond_f

    :try_start_7e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_f

    :catch_82
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->a(Lcom/baidu/wallet/core/utils/support/SmsContent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_144

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_144

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a5} :catch_172
    .catchall {:try_start_87 .. :try_end_a5} :catchall_170

    move-result v2

    if-eqz v2, :cond_b5

    if-eqz v1, :cond_f

    :try_start_aa
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_af

    goto/16 :goto_f

    :catch_af
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_b5
    :try_start_b5
    const-string v2, "\\d{4,6}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_be} :catch_172
    .catchall {:try_start_b5 .. :try_end_be} :catchall_170

    move-result-object v0

    if-nez v0, :cond_ce

    if-eqz v1, :cond_f

    :try_start_c3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_c8

    goto/16 :goto_f

    :catch_c8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_ce
    :try_start_ce
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_172
    .catchall {:try_start_ce .. :try_end_d1} :catchall_170

    move-result v2

    if-nez v2, :cond_e1

    if-eqz v1, :cond_f

    :try_start_d6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_db

    goto/16 :goto_f

    :catch_db
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_e1
    const/4 v2, 0x0

    :try_start_e2
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-string v0, "\u9a8c\u8bc1\u7801\u4e0d\u662f4,6\u4e3a\u6570\u5b57 \u4e0d\u8bc6\u522b"

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f1} :catch_172
    .catchall {:try_start_e2 .. :try_end_f1} :catchall_170

    if-eqz v1, :cond_f

    :try_start_f3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_f6} :catch_f8

    goto/16 :goto_f

    :catch_f8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_fe
    :try_start_fe
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/support/SmsContent;->c(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/widget/EditText;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_103} :catch_172
    .catchall {:try_start_fe .. :try_end_103} :catchall_170

    move-result-object v2

    if-nez v2, :cond_113

    if-eqz v1, :cond_f

    :try_start_108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10b} :catch_10d

    goto/16 :goto_f

    :catch_10d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_113
    :try_start_113
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/support/SmsContent;->d(Lcom/baidu/wallet/core/utils/support/SmsContent;)Z
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_118} :catch_172
    .catchall {:try_start_113 .. :try_end_118} :catchall_170

    move-result v2

    if-eqz v2, :cond_128

    if-eqz v1, :cond_f

    :try_start_11d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_120} :catch_122

    goto/16 :goto_f

    :catch_122
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :cond_128
    :try_start_128
    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/baidu/wallet/core/utils/support/SmsContent;->a(Lcom/baidu/wallet/core/utils/support/SmsContent;Z)Z

    iget-object v2, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/support/SmsContent;->c(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/utils/support/a;->a:Lcom/baidu/wallet/core/utils/support/SmsContent;

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/support/SmsContent;->b(Lcom/baidu/wallet/core/utils/support/SmsContent;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "recognizeSms"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/baidu/wallet/base/stastics/PayStatisticsUtil;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_144} :catch_172
    .catchall {:try_start_128 .. :try_end_144} :catchall_170

    :cond_144
    if-eqz v1, :cond_f

    :try_start_146
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_146 .. :try_end_149} :catch_14b

    goto/16 :goto_f

    :catch_14b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :catch_151
    move-exception v0

    move-object v1, v6

    :goto_153
    :try_start_153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_156
    .catchall {:try_start_153 .. :try_end_156} :catchall_170

    if-eqz v1, :cond_f

    :try_start_158
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_15b} :catch_15d

    goto/16 :goto_f

    :catch_15d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :catchall_163
    move-exception v0

    move-object v1, v6

    :goto_165
    if-eqz v1, :cond_16a

    :try_start_167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16a} :catch_16b

    :cond_16a
    :goto_16a
    throw v0

    :catch_16b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16a

    :catchall_170
    move-exception v0

    goto :goto_165

    :catch_172
    move-exception v0

    goto :goto_153
.end method

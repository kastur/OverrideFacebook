.class public Lcom/facebook/katana/NativeThirdPartyUriHelper;
.super Ljava/lang/Object;
.source "NativeThirdPartyUriHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    const-string v0, "fbrpc"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "facebook"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/nativethirdparty"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    :cond_0
    const/4 v0, 0x0

    .line 94
    :cond_1
    :goto_0
    return-object v0

    .line 83
    :cond_2
    invoke-static {p0, p1}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->d(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 88
    invoke-static {p0, p1}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    if-nez v0, :cond_1

    .line 93
    invoke-static {p0, p1}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->c(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 366
    if-nez p0, :cond_0

    move-object p1, v0

    .line 378
    :goto_0
    return-object p1

    .line 370
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 377
    const-string v2, "app_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    move-object p1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 382
    if-eqz p0, :cond_0

    .line 383
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 343
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "key_hash"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    if-nez v2, :cond_0

    .line 345
    return-object v3

    .line 349
    :cond_0
    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 350
    if-ltz v4, :cond_1

    .line 351
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 353
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v8, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "app_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 108
    cmp-long v0, v6, v1

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-string v1, "LAUNCH"

    .line 119
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    :goto_2
    new-instance v0, Lcom/facebook/katana/util/logging/UserInteractionEvent;

    const-string v2, "MARKET_APP"

    const-wide/16 v4, 0x80

    move-object v9, v8

    invoke-direct/range {v0 .. v9}, Lcom/facebook/katana/util/logging/UserInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Landroid/graphics/Point;)V

    .line 130
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/facebook/katana/util/logging/MobileEventLogger;->b(Landroid/content/Context;Lcom/facebook/katana/util/logging/MobileEvent;)V

    goto :goto_0

    .line 116
    :cond_2
    const-string v1, "INSTALL"

    goto :goto_1

    :cond_3
    move-object v3, v8

    .line 120
    goto :goto_2
.end method

.method private static a(Landroid/content/pm/PackageInfo;Ljava/util/List;)Z
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 300
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 301
    if-nez v3, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v1

    .line 307
    :cond_1
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 313
    array-length v5, v3

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_0

    aget-object v0, v3, v2

    .line 314
    invoke-virtual {v4}, Ljava/security/MessageDigest;->reset()V

    .line 315
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 316
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v6, 0x3

    invoke-static {v0, v6}, Lcom/facebook/orca/common/util/Base64;->a([BI)Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 320
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    .line 321
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 322
    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    const-string v0, "Facebook-IntentUriHandler"

    const-string v2, "Failed to instantiate SHA-1 algorithm."

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 313
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 147
    const-string v2, "market_uri"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 148
    if-nez v2, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 152
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    const/high16 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    .line 160
    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0, v3}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 178
    const/4 v0, 0x0

    .line 180
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fallback_url"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 184
    if-nez v3, :cond_1

    .line 185
    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    .line 188
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 189
    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_0

    move-object v0, v1

    .line 193
    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 208
    const-string v0, "app_id"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    const-string v0, "target_url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 210
    const-string v0, "access_token"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    const-string v0, "expires_in"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v6, "class_name"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-static {p1}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Landroid/net/Uri;)Ljava/util/List;

    move-result-object v7

    .line 216
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 217
    const-string v0, "NativeThirdPartyUriHelper"

    const-string v2, "Native application url did not specify app_id."

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 282
    :goto_0
    return-object v0

    .line 220
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 221
    const-string v0, "NativeThirdPartyUriHelper"

    const-string v2, "Native application url did not specify Android key hash."

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 222
    goto :goto_0

    .line 224
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eq v8, v9, :cond_2

    .line 225
    const-string v0, "NativeThirdPartyUriHelper"

    const-string v2, "Native application url specified only one of package_name and class_name.  Neither or both must be specified."

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_2
    new-instance v8, Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "com.facebook.application."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 232
    const-string v2, "access_token"

    invoke-virtual {v8, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v2, "expires_in"

    invoke-virtual {v8, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/high16 v2, 0x1000

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 236
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 240
    const/high16 v4, 0x1

    invoke-virtual {v2, v8, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 243
    if-nez v4, :cond_4

    .line 244
    const-string v0, "NativeThirdPartyUriHelper"

    const-string v2, "Native application is not installed."

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 245
    goto :goto_0

    .line 248
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 249
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 250
    if-nez v0, :cond_5

    .line 251
    const-string v0, "NativeThirdPartyUriHelper"

    const-string v2, "Native application url referenced ResolveInfo that has null activityInfo."

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 254
    goto :goto_0

    .line 257
    :cond_5
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 258
    if-nez v0, :cond_6

    .line 259
    const-string v0, "NativeThirdPartyUriHelper"

    const-string v2, "Native application url referenced ActivityInfo that has null packageName."

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 262
    goto/16 :goto_0

    .line 268
    :cond_6
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 272
    :goto_1
    if-nez v2, :cond_7

    .line 273
    const-string v2, "NativeThirdPartyUriHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not getPackageInfo for package: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 274
    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v2, v1

    goto :goto_1

    .line 277
    :cond_7
    invoke-static {v2, v7}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Landroid/content/pm/PackageInfo;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 278
    const-string v2, "NativeThirdPartyUriHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not verify signature for package: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 279
    goto/16 :goto_0

    .line 282
    :cond_8
    invoke-static {v3, v8}, Lcom/facebook/katana/NativeThirdPartyUriHelper;->a(Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_0
.end method

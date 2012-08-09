.class public Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;
.super Ljava/lang/Object;
.source "AudienceAdapter.java"

# interfaces
.implements Lcom/facebook/katana/features/composer/AudienceOption;


# instance fields
.field private a:Lcom/facebook/katana/model/PrivacySetting;

.field private synthetic b:Lcom/facebook/katana/features/composer/AudienceAdapter;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/PrivacySetting;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->b:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    .line 368
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "EVERYONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    const v0, 0x7f02000f

    .line 393
    :goto_0
    return v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "ALL_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    const v0, 0x7f020015

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "SELF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    const v0, 0x7f020019

    goto :goto_0

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "FRIENDS_OF_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    const v0, 0x7f020013

    goto :goto_0

    .line 386
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    sget-object v1, Lcom/facebook/katana/model/PrivacySetting;->FB_ONLY:Lcom/facebook/katana/model/PrivacySetting;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/model/PrivacySetting;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    const v0, 0x7f020011

    goto :goto_0

    .line 390
    :cond_4
    const v0, 0x7f02000d

    goto :goto_0

    .line 393
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "EVERYONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->b:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-static {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(Lcom/facebook/katana/features/composer/AudienceAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "ALL_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->b:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-static {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(Lcom/facebook/katana/features/composer/AudienceAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "SELF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 404
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->b:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-static {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(Lcom/facebook/katana/features/composer/AudienceAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "FRIENDS_OF_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->b:Lcom/facebook/katana/features/composer/AudienceAdapter;

    invoke-static {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(Lcom/facebook/katana/features/composer/AudienceAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    iget-object v0, v0, Lcom/facebook/katana/model/PrivacySetting;->description:Ljava/lang/String;

    goto :goto_0

    .line 410
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lcom/facebook/katana/features/composer/AudienceOption$Type;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    return-object v0
.end method

.method public final d()Lcom/facebook/katana/model/PrivacySetting;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->a:Lcom/facebook/katana/model/PrivacySetting;

    return-object v0
.end method

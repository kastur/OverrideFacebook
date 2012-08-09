.class public Lcom/facebook/katana/features/composer/AudienceAdapter;
.super Lcom/facebook/katana/ui/SectionedListAdapter;
.source "AudienceAdapter.java"


# instance fields
.field public a:Z

.field public b:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/features/composer/AudienceOption$Type;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/features/composer/AudienceOption;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:[I

.field private final e:Landroid/content/Context;

.field private final f:Landroid/view/LayoutInflater;

.field private g:Lcom/facebook/katana/service/method/AudienceSettings;

.field private final h:Z

.field private i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/ui/SectionedListAdapter;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->a:Z

    .line 31
    iput-boolean v2, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->b:Z

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/katana/features/composer/AudienceOption$Type;

    sget-object v1, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    .line 53
    iput-object p1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->e:Landroid/content/Context;

    .line 54
    iput-boolean p2, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->h:Z

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->f:Landroid/view/LayoutInflater;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    if-eqz p2, :cond_1

    .line 60
    new-instance v1, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    new-instance v2, Lcom/facebook/katana/model/PrivacySetting;

    const-string v3, "FRIENDS_OF_FRIENDS"

    invoke-direct {v2, v3}, Lcom/facebook/katana/model/PrivacySetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;-><init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/PrivacySetting;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_0
    new-instance v1, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    new-instance v2, Lcom/facebook/katana/model/PrivacySetting;

    const-string v3, "ALL_FRIENDS"

    invoke-direct {v2, v3}, Lcom/facebook/katana/model/PrivacySetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;-><init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/PrivacySetting;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v1, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    new-instance v2, Lcom/facebook/katana/model/PrivacySetting;

    const-string v3, "SELF"

    invoke-direct {v2, v3}, Lcom/facebook/katana/model/PrivacySetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;-><init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/PrivacySetting;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {}, Lcom/facebook/katana/model/FacebookAffiliation;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v1, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    sget-object v2, Lcom/facebook/katana/model/PrivacySetting;->FB_ONLY:Lcom/facebook/katana/model/PrivacySetting;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;-><init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/PrivacySetting;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    .line 78
    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    sget-object v2, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void

    .line 63
    :cond_1
    new-instance v1, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    new-instance v2, Lcom/facebook/katana/model/PrivacySetting;

    const-string v3, "EVERYONE"

    invoke-direct {v2, v3}, Lcom/facebook/katana/model/PrivacySetting;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;-><init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/PrivacySetting;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/features/composer/AudienceAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final a(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 149
    .line 151
    if-nez p4, :cond_3

    .line 152
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    :goto_0
    check-cast v0, Landroid/widget/LinearLayout;

    .line 155
    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 156
    const v2, 0x7f08007a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 157
    const v3, 0x7f08007c

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 159
    iget-object v3, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    iget-object v7, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aget-object v7, v7, p1

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/features/composer/AudienceOption;

    .line 160
    invoke-interface {v3}, Lcom/facebook/katana/features/composer/AudienceOption;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-interface {v3}, Lcom/facebook/katana/features/composer/AudienceOption;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    aget v1, v1, v5

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    aget v1, v1, v4

    if-ne v1, p2, :cond_0

    move v1, v4

    .line 168
    :goto_1
    if-eqz v1, :cond_1

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 170
    return-object v0

    :cond_0
    move v1, v5

    .line 165
    goto :goto_1

    .line 168
    :cond_1
    const/16 v5, 0x8

    goto :goto_2

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move-object v0, p4

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    .line 125
    if-nez p2, :cond_0

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->f:Landroid/view/LayoutInflater;

    const v1, 0x7f03004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 131
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 132
    sget-object v3, Lcom/facebook/katana/features/composer/AudienceAdapter$1;->a:[I

    iget-object v4, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/facebook/katana/features/composer/AudienceOption$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 140
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-object v1

    .line 134
    :pswitch_0
    iget-object v2, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->e:Landroid/content/Context;

    const v3, 0x7f0b01b6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 137
    :pswitch_1
    iget-object v2, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->e:Landroid/content/Context;

    const v3, 0x7f0b01b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v1, p2

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic a(II)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/facebook/katana/features/composer/AudienceAdapter;->c(II)Lcom/facebook/katana/features/composer/AudienceOption;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/facebook/katana/model/PrivacySetting;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v7, -0x1

    const/4 v12, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 241
    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    const-string v1, "EVERYONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    new-instance p1, Lcom/facebook/katana/model/PrivacySetting;

    const-string v0, "FRIENDS_OF_FRIENDS"

    invoke-direct {p1, v0}, Lcom/facebook/katana/model/PrivacySetting;-><init>(Ljava/lang/String;)V

    .line 251
    :cond_2
    const-string v0, "CUSTOM"

    iget-object v1, p1, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SOME_FRIENDS"

    iget-object v1, p1, Lcom/facebook/katana/model/PrivacySetting;->friends:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    sget-object v1, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 256
    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 257
    sget-object v5, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-interface {v1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 263
    :try_start_0
    iget-object v1, p1, Lcom/facebook/katana/model/PrivacySetting;->allow:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 267
    :goto_1
    cmp-long v1, v5, v7

    if-eqz v1, :cond_4

    .line 268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/composer/AudienceOption;

    .line 269
    add-int/lit8 v1, v1, 0x1

    .line 270
    check-cast v0, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;

    .line 271
    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;->d()Lcom/facebook/katana/model/FriendList;

    move-result-object v0

    iget-wide v10, v0, Lcom/facebook/katana/model/FriendList;->flid:J

    cmp-long v0, v10, v5

    if-nez v0, :cond_3

    .line 276
    :goto_2
    if-ltz v9, :cond_4

    if-ltz v1, :cond_4

    .line 277
    new-array v0, v12, [I

    aput v9, v0, v4

    aput v1, v0, v3

    iput-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    .line 278
    invoke-virtual {p0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->i()V

    goto :goto_0

    :catch_0
    move-exception v1

    move-wide v5, v7

    goto :goto_1

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    sget-object v1, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/features/composer/AudienceOption;

    .line 289
    check-cast v1, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    .line 290
    invoke-virtual {v1}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->d()Lcom/facebook/katana/model/PrivacySetting;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/facebook/katana/model/PrivacySetting;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    .line 295
    :goto_3
    if-nez v1, :cond_6

    .line 296
    new-instance v1, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    invoke-direct {v1, p0, p1}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;-><init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/PrivacySetting;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->b:Z

    if-nez v0, :cond_0

    .line 303
    :cond_7
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 304
    sget-object v1, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 308
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    sget-object v1, Lcom/facebook/katana/features/composer/AudienceOption$Type;->PRIVACY_SETTING:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/composer/AudienceOption;

    .line 310
    add-int/lit8 v1, v1, 0x1

    .line 311
    check-cast v0, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;

    .line 313
    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter$PrivacySettingAudienceOption;->d()Lcom/facebook/katana/model/PrivacySetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/model/PrivacySetting;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 318
    :goto_4
    if-ltz v5, :cond_0

    if-ltz v1, :cond_0

    .line 319
    new-array v0, v12, [I

    aput v5, v0, v4

    aput v1, v0, v3

    iput-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    .line 320
    invoke-virtual {p0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->i()V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v4

    goto :goto_3

    :cond_b
    move v1, v2

    goto/16 :goto_2
.end method

.method public final a(Lcom/facebook/katana/service/method/AudienceSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->g:Lcom/facebook/katana/service/method/AudienceSettings;

    .line 89
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FriendList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FriendList;

    .line 210
    new-instance v3, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;

    invoke-direct {v3, p0, v0}, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;-><init>(Lcom/facebook/katana/features/composer/AudienceAdapter;Lcom/facebook/katana/model/FriendList;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    sget-object v2, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a([I)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    .line 354
    return-void
.end method

.method public final a(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    sget-object v2, Lcom/facebook/katana/features/composer/AudienceOption$Type;->FRIEND_LIST:Lcom/facebook/katana/features/composer/AudienceOption$Type;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 225
    if-nez v0, :cond_0

    move v0, v1

    .line 236
    :goto_0
    return v0

    .line 229
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/composer/AudienceOption;

    .line 230
    check-cast v0, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;

    invoke-virtual {v0}, Lcom/facebook/katana/features/composer/AudienceAdapter$FriendListAudienceOption;->d()Lcom/facebook/katana/model/FriendList;

    move-result-object v0

    .line 231
    iget-wide v3, v0, Lcom/facebook/katana/model/FriendList;->flid:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 232
    invoke-virtual {v0}, Lcom/facebook/katana/model/FriendList;->b()Lcom/facebook/katana/model/PrivacySetting;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->a(Lcom/facebook/katana/model/PrivacySetting;)V

    .line 233
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 236
    goto :goto_0
.end method

.method public final b(I)I
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x2

    return v0
.end method

.method public final c(II)Lcom/facebook/katana/features/composer/AudienceOption;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/features/composer/AudienceOption;

    return-object v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->i:[Lcom/facebook/katana/features/composer/AudienceOption$Type;

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/facebook/katana/service/method/AudienceSettings;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->g:Lcom/facebook/katana/service/method/AudienceSettings;

    return-object v0
.end method

.method public final f()Lcom/facebook/katana/features/composer/AudienceOption;
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    if-nez v0, :cond_0

    .line 328
    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/composer/AudienceAdapter;->c(II)Lcom/facebook/katana/features/composer/AudienceOption;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/facebook/katana/features/composer/AudienceAdapter;->f()Lcom/facebook/katana/features/composer/AudienceOption;

    move-result-object v0

    .line 340
    if-nez v0, :cond_0

    .line 341
    const/4 v0, -0x1

    .line 343
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/katana/features/composer/AudienceOption;->a()I

    move-result v0

    goto :goto_0
.end method

.method public final h()[I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/katana/features/composer/AudienceAdapter;->d:[I

    return-object v0
.end method

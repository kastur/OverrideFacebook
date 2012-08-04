.class public Lcom/facebook/katana/UserInfoAdapter;
.super Lcom/facebook/katana/ProfileInfoAdapter;
.source "UserInfoAdapter.java"


# static fields
.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    sput-object v0, Lcom/facebook/katana/UserInfoAdapter;->e:Ljava/util/Map;

    const-string v1, "college"

    const v2, 0x7f0b017d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->e:Ljava/util/Map;

    const-string v1, "high school"

    const v2, 0x7f0b017e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->e:Ljava/util/Map;

    const-string v1, "regional"

    const v2, 0x7f0b0180

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->e:Ljava/util/Map;

    const-string v1, "test"

    const v2, 0x7f0b0181

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->e:Ljava/util/Map;

    const-string v1, "work"

    const v2, 0x7f0b017f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    new-instance v0, Lcom/facebook/katana/UserInfoAdapter$1;

    invoke-direct {v0}, Lcom/facebook/katana/UserInfoAdapter$1;-><init>()V

    .line 246
    sput-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "Single"

    new-array v2, v6, [I

    const v3, 0x7f0b02f6

    aput v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "In a Relationship"

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "Married"

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "Engaged"

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "It\'s Complicated"

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "In an Open Relationship"

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "widowed"

    new-array v2, v6, [I

    const v3, 0x7f0b02f7

    aput v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "separated"

    new-array v2, v6, [I

    const v3, 0x7f0b02f5

    aput v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "divorced"

    new-array v2, v6, [I

    const v3, 0x7f0b02e8

    aput v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "In a civil union"

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    const-string v1, "In a domestic partnership"

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void

    .line 248
    :array_0
    .array-data 0x4
        0xedt 0x2t 0xbt 0x7ft
        0xf2t 0x2t 0xbt 0x7ft
    .end array-data

    .line 251
    :array_1
    .array-data 0x4
        0xf3t 0x2t 0xbt 0x7ft
        0xf4t 0x2t 0xbt 0x7ft
    .end array-data

    .line 254
    :array_2
    .array-data 0x4
        0xebt 0x2t 0xbt 0x7ft
        0xect 0x2t 0xbt 0x7ft
    .end array-data

    .line 257
    :array_3
    .array-data 0x4
        0xeet 0x2t 0xbt 0x7ft
        0xeft 0x2t 0xbt 0x7ft
    .end array-data

    .line 261
    :array_4
    .array-data 0x4
        0xf0t 0x2t 0xbt 0x7ft
        0xf1t 0x2t 0xbt 0x7ft
    .end array-data

    .line 270
    :array_5
    .array-data 0x4
        0xe6t 0x2t 0xbt 0x7ft
        0xe7t 0x2t 0xbt 0x7ft
    .end array-data

    .line 274
    :array_6
    .array-data 0x4
        0xe9t 0x2t 0xbt 0x7ft
        0xeat 0x2t 0xbt 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/katana/ProfileInfoAdapter;-><init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Z)V

    .line 45
    iput-boolean p4, p0, Lcom/facebook/katana/UserInfoAdapter;->d:Z

    .line 46
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookUserFull;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 287
    iget-object v1, p1, Lcom/facebook/katana/model/FacebookUserFull;->mRelationshipStatus:Ljava/lang/String;

    .line 289
    if-eqz v1, :cond_2

    .line 290
    sget-object v0, Lcom/facebook/katana/UserInfoAdapter;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 292
    if-nez v0, :cond_0

    move-object v0, v1

    .line 311
    :goto_0
    return-object v0

    .line 298
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookUserFull;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v1

    .line 299
    if-nez v1, :cond_1

    .line 304
    aget v0, v0, v3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 306
    :cond_1
    aget v0, v0, v2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/model/FacebookUserFull;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const v10, 0x7f0b02e5

    const/16 v9, 0x40

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-boolean v0, p0, Lcom/facebook/katana/UserInfoAdapter;->c:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p1, Lcom/facebook/katana/model/FacebookUserFull;->mDisplayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mBlurb:Ljava/lang/String;

    iget-object v4, p1, Lcom/facebook/katana/model/FacebookUserFull;->mLargePic:Ljava/lang/String;

    invoke-direct {v1, v6, v2, v3, v4}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/katana/UserInfoAdapter;->d:Z

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 62
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mDisplayName:Ljava/lang/String;

    .line 63
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b02db

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v8, v0, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_3
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mCellPhone:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mCellPhone:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_4
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mOtherPhone:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mOtherPhone:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_5
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 80
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b02d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/facebook/katana/model/FacebookUserFull;->mContactEmail:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_6
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mAffiliations:Ljava/util/List;

    .line 84
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;

    .line 88
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;->mType:Ljava/lang/String;

    const-string v5, "work"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 90
    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_7
    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;->mAffiliationName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 94
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 95
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_9
    sget-object v1, Lcom/facebook/katana/UserInfoAdapter;->e:Ljava/util/Map;

    iget-object v5, v0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;->mType:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 106
    if-eqz v1, :cond_a

    .line 107
    iget-object v5, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;->mAffiliationName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 109
    :cond_a
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookUserFull$Affiliation;->mType:Ljava/lang/String;

    goto :goto_1

    .line 116
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v4, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v5, 0x7f0b02cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v4, v2}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 122
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b017f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_d
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mBirthday:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 128
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mBirthday:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_e
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/facebook/katana/UserInfoAdapter;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookUserFull;)Ljava/lang/String;

    move-result-object v3

    .line 133
    if-eqz v3, :cond_f

    .line 134
    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookUserFull;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 135
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_f
    :goto_2
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mCurrentLocation:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 147
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02d1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mCurrentLocation:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_10
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mHometownLocation:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 152
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02d6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mHometownLocation:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_11
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mReligion:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 157
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02f8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mReligion:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_12
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mPoliticalViews:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 162
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02e3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mPoliticalViews:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_13
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mActivities:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 167
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02c9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mActivities:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_14
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mInterests:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 172
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mInterests:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_15
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mTv:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mTv:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_16
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mMovies:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mMovies:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_17
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mBooks:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 184
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mBooks:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_18
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mQuotes:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 188
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mQuotes:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_19
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookUserFull;->mAboutMe:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 192
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b02c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/facebook/katana/model/FacebookUserFull;->mAboutMe:Ljava/lang/String;

    invoke-direct {v1, v8, v2, v3}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_1a
    invoke-virtual {p0}, Lcom/facebook/katana/UserInfoAdapter;->notifyDataSetChanged()V

    .line 196
    return-void

    .line 139
    :cond_1b
    iget-object v7, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    new-instance v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/facebook/katana/UserInfoAdapter;->a:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookUserFull;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v4

    iget-object v4, v4, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/facebook/katana/model/FacebookUserFull;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v5

    iget-wide v5, v5, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/ProfileInfoAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/katana/UserInfoAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;

    .line 208
    iget v0, v0, Lcom/facebook/katana/ProfileInfoAdapter$Item;->a:I

    packed-switch v0, :pswitch_data_0

    .line 220
    :pswitch_0
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 210
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x4

    return v0
.end method

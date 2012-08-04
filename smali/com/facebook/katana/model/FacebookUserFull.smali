.class public Lcom/facebook/katana/model/FacebookUserFull;
.super Lcom/facebook/katana/model/FacebookUser;
.source "FacebookUserFull.java"


# instance fields
.field public final mAboutMe:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "about_me"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mActivities:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "activities"
        type = Lcom/facebook/katana/model/FacebookUserFull$JMTrimWhiteString;
    .end annotation
.end field

.field public final mAffiliations:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Lcom/facebook/katana/model/FacebookUserFull$Affiliation;
        }
        jsonFieldName = "affiliations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookUserFull$Affiliation;",
            ">;"
        }
    .end annotation
.end field

.field public final mBirthday:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "birthday"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mBlurb:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "profile_blurb"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mBooks:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "books"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mCellPhone:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "cell"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mContactEmail:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "contact_email"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mCurrentLocation:Ljava/lang/String;

.field private final mCurrentLocation_internal:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "current_location"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mHometownLocation:Ljava/lang/String;

.field private final mHometownLocation_internal:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "hometown_location"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mInterests:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "interests"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mLargePic:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "pic"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mMovies:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "movies"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mMusic:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "music"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mOtherPhone:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "other_phone"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mPoliticalViews:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "political"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mQuotes:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "quotes"
        type = Lcom/facebook/katana/model/FacebookUserFull$JMTrimWhiteAndNLString;
    .end annotation
.end field

.field public final mRelationshipStatus:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "relationship_status"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mReligion:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "religion"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field protected mSignificantOther:Lcom/facebook/katana/model/FacebookUser;

.field public final mSignificantOtherId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "significant_other_id"
    .end annotation
.end field

.field public final mTv:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "tv"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "profile_url"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookUser;-><init>()V

    .line 117
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mAboutMe:Ljava/lang/String;

    .line 118
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mBlurb:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mActivities:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mAffiliations:Ljava/util/List;

    .line 121
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mBirthday:Ljava/lang/String;

    .line 122
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mCurrentLocation_internal:Ljava/util/Map;

    .line 123
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mCurrentLocation:Ljava/lang/String;

    .line 124
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mHometownLocation_internal:Ljava/util/Map;

    .line 125
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mHometownLocation:Ljava/lang/String;

    .line 126
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mInterests:Ljava/lang/String;

    .line 127
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mLargePic:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mUrl:Ljava/lang/String;

    .line 129
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mRelationshipStatus:Ljava/lang/String;

    .line 130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookUserFull;->mSignificantOtherId:J

    .line 131
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mReligion:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mPoliticalViews:Ljava/lang/String;

    .line 133
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mMusic:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mTv:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mMovies:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mBooks:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mQuotes:Ljava/lang/String;

    .line 138
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mContactEmail:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mCellPhone:Ljava/lang/String;

    .line 140
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUserFull;->mOtherPhone:Ljava/lang/String;

    .line 141
    return-void
.end method

.method protected static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v4, 0xa

    .line 206
    if-eqz p1, :cond_2

    .line 207
    const-string v0, "\n"

    const-string v1, ", "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 212
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 214
    if-eq v3, v5, :cond_3

    if-eq v3, v6, :cond_3

    if-eq v3, v4, :cond_3

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 220
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 221
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 222
    if-eq v1, v5, :cond_1

    if-eq v1, v6, :cond_1

    if-ne v1, v4, :cond_4

    .line 223
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 209
    :cond_2
    const-string v0, "[\r|\u000b|\u000c]"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 212
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    const-string v1, "city"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 242
    const-string v2, "state"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 244
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 249
    :cond_0
    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_1
    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookUserFull;->mCurrentLocation_internal:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "mCurrentLocation"

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookUserFull;->mCurrentLocation_internal:Ljava/util/Map;

    invoke-static {v1}, Lcom/facebook/katana/model/FacebookUserFull;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookUserFull;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookUserFull;->mHometownLocation_internal:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "mHometownLocation"

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookUserFull;->mHometownLocation_internal:Ljava/util/Map;

    invoke-static {v1}, Lcom/facebook/katana/model/FacebookUserFull;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/model/FacebookUserFull;->a_(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    return-void
.end method

.method public final a(Lcom/facebook/katana/model/FacebookUser;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookUserFull;->mSignificantOther:Lcom/facebook/katana/model/FacebookUser;

    .line 158
    return-void
.end method

.method public final b()Lcom/facebook/katana/model/FacebookUser;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookUserFull;->mSignificantOther:Lcom/facebook/katana/model/FacebookUser;

    return-object v0
.end method

.class public Lcom/facebook/katana/model/FacebookFriendInfo;
.super Lcom/facebook/katana/model/FacebookUser;
.source "FacebookFriendInfo.java"


# instance fields
.field private final mBirthday:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "birthday_date"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field

.field public final mBirthdayDay:I

.field public final mBirthdayMonth:I

.field public final mBirthdayYear:I

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

.field public final mOtherPhone:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "other_phone"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookUser;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mContactEmail:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayMonth:I

    .line 51
    iput v1, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayDay:I

    .line 52
    iput v1, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayYear:I

    .line 54
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthday:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthday:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d/y"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 68
    iget-object v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthday:Ljava/lang/String;

    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v0}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    const/4 v0, 0x1

    .line 78
    :goto_0
    if-eqz v1, :cond_0

    .line 79
    const-string v2, "mBirthdayMonth"

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/katana/model/FacebookFriendInfo;->a(Ljava/lang/String;J)V

    .line 80
    const-string v2, "mBirthdayDay"

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/facebook/katana/model/FacebookFriendInfo;->a(Ljava/lang/String;J)V

    .line 81
    if-eqz v0, :cond_0

    .line 82
    const-string v0, "mBirthdayYear"

    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/model/FacebookFriendInfo;->a(Ljava/lang/String;J)V

    .line 86
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 75
    iget-object v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthday:Ljava/lang/String;

    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v0}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v1

    goto :goto_0
.end method

.method public final b()J
    .locals 4

    .prologue
    .line 99
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mUserId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mFirstName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mLastName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mCellPhone:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mOtherPhone:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mContactEmail:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayMonth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayDay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/facebook/katana/model/FacebookFriendInfo;->mBirthdayYear:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->b([Ljava/lang/Object;)J

    move-result-wide v0

    .line 101
    return-wide v0
.end method

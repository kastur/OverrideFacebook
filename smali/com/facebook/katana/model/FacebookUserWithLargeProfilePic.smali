.class public Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;
.super Lcom/facebook/katana/model/FacebookUser;
.source "FacebookUserWithLargeProfilePic.java"


# instance fields
.field public final mBigImageURL:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "pic_big"
        type = Lcom/facebook/katana/util/StringUtils$JMNulledString;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookUser;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;->mBigImageURL:Ljava/lang/String;

    .line 13
    return-void
.end method

.class public Lcom/facebook/katana/model/FacebookPhonebookContactUser;
.super Lcom/facebook/katana/model/FacebookPhonebookContact;
.source "FacebookPhonebookContactUser.java"


# instance fields
.field public final imageUrl:Ljava/lang/String;

.field public final mLargeImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/model/FacebookPhonebookContact;Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 17
    iget-object v1, p2, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;->mDisplayName:Ljava/lang/String;

    iget-wide v2, p1, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    const/4 v4, 0x0

    iget-wide v5, p1, Lcom/facebook/katana/model/FacebookPhonebookContact;->userId:J

    iget-object v7, p1, Lcom/facebook/katana/model/FacebookPhonebookContact;->phone:Ljava/lang/String;

    iget-object v8, p1, Lcom/facebook/katana/model/FacebookPhonebookContact;->email:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/FacebookPhonebookContact;-><init>(Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p2, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;->mImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->imageUrl:Ljava/lang/String;

    .line 21
    iget-object v0, p2, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;->mBigImageURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContactUser;->mLargeImageUrl:Ljava/lang/String;

    .line 22
    return-void
.end method

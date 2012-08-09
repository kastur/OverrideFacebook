.class public Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ProfileFacebookListActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/activity/ProfileFacebookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILcom/facebook/katana/model/FacebookProfile;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 73
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 75
    if-eqz p2, :cond_0

    iget-wide v0, p2, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iget-object v2, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-wide v2, v2, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iput-object p2, v0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i()V

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->u()V

    .line 81
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget v0, v0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i()V

    .line 122
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    iget-wide v0, p4, Lcom/facebook/katana/binding/ProfileImage;->a:J

    iget-object v2, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-wide v2, v2, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-wide v0, v0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookSessionInfo;->userId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    new-instance v1, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v2, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-object v2, v2, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/katana/model/FacebookProfile;-><init>(Lcom/facebook/katana/model/FacebookUser;)V

    iput-object v1, v0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i()V

    .line 103
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v0, :cond_0

    .line 94
    iget-object v6, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    iget-object v1, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-wide v1, v1, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    iget-object v3, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-object v3, v3, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    iget-object v4, p4, Lcom/facebook/katana/binding/ProfileImage;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-object v5, v5, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    iget v5, v5, Lcom/facebook/katana/model/FacebookProfile;->mType:I

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    iput-object v0, v6, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->k:Lcom/facebook/katana/model/FacebookProfile;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 4
    .parameter

    .prologue
    .line 108
    iget-wide v0, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    iget-object v2, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    iget-wide v2, v2, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/facebook/katana/activity/ProfileFacebookListActivity$FBListActivityAppSessionListener;->a:Lcom/facebook/katana/activity/ProfileFacebookListActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/ProfileFacebookListActivity;->i()V

    .line 111
    :cond_0
    return-void
.end method

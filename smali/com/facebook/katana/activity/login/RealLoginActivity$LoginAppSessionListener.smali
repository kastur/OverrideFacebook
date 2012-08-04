.class Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "RealLoginActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/login/RealLoginActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 878
    iput-object p1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/login/RealLoginActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;-><init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;I)I

    .line 1029
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, p2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->f(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z

    .line 1030
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xc8

    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 885
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->r(Lcom/facebook/katana/activity/login/RealLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 891
    if-ne p3, v2, :cond_0

    .line 895
    const-string v0, "LOGIN_ERROR"

    const-string v1, "stale succesful onLoginComplete received (reqID=%s,mLoginReqID=%s. Discarding login state"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->r(Lcom/facebook/katana/activity/login/RealLoginActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    if-ne p3, v2, :cond_2

    .line 905
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, v5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->d(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z

    goto :goto_0

    .line 907
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->q(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/binding/AppSessionListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 908
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Lcom/facebook/katana/binding/AppSession;)Lcom/facebook/katana/binding/AppSession;

    .line 910
    if-nez p3, :cond_c

    .line 911
    instance-of v0, p5, Lcom/facebook/katana/model/FacebookApiException;

    if-eqz v0, :cond_6

    move-object v0, p5

    .line 912
    check-cast v0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookApiException;->a()I

    move-result p3

    move-object v0, p5

    .line 913
    check-cast v0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookApiException;->b()Ljava/lang/String;

    move-result-object p4

    move-object v0, p5

    .line 914
    check-cast v0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookApiException;->c()Ljava/lang/String;

    move-result-object v0

    .line 928
    :goto_1
    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->h(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v2, v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->d(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 929
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->s(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 936
    const/16 p3, 0x196

    .line 937
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0232

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 938
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0233

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 940
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->g(Lcom/facebook/katana/activity/login/RealLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 941
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-virtual {v0, v7}, Lcom/facebook/katana/activity/login/RealLoginActivity;->showDialog(I)V

    .line 1006
    :cond_4
    :goto_2
    const/16 v0, 0x196

    if-ne p3, v0, :cond_b

    .line 1007
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, v5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->e(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z

    .line 1009
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v1, 0x7f0800d5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, v5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)V

    .line 1019
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->m(Lcom/facebook/katana/activity/login/RealLoginActivity;)Lcom/facebook/katana/view/FacebookProgressCircleView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/katana/view/FacebookProgressCircleView;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0, v5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Z)Z

    goto/16 :goto_0

    .line 915
    :cond_6
    instance-of v0, p5, Ljava/net/UnknownHostException;

    if-nez v0, :cond_7

    instance-of v0, p5, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_7

    instance-of v0, p5, Lcom/facebook/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_8

    .line 918
    :cond_7
    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    .line 919
    const/16 p3, -0x258

    move-object v0, v1

    goto/16 :goto_1

    .line 921
    :cond_8
    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p4

    move-object v0, v1

    goto/16 :goto_1

    .line 943
    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->showDialog(I)V

    goto :goto_2

    .line 946
    :cond_a
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v3, 0x7f0b0227

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 947
    sparse-switch p3, :sswitch_data_0

    .line 986
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v3, 0x7f0b021d

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 987
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v3, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v4, 0x7f0b021e

    invoke-virtual {v3, v4}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p3, p4, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 994
    const-string v0, "LOGIN_ERROR"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected login error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const-string v3, ""

    invoke-static {v2, v3, p3, p4, p5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    :goto_4
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->h(Lcom/facebook/katana/activity/login/RealLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1001
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-virtual {v0, v7}, Lcom/facebook/katana/activity/login/RealLoginActivity;->showDialog(I)V

    goto/16 :goto_2

    .line 949
    :sswitch_0
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0213

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 950
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0214

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 954
    :sswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0215

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 955
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0216

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 959
    :sswitch_2
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0217

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 960
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0218

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 964
    :sswitch_3
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0232

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 965
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0233

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 969
    :sswitch_4
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b0219

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 970
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b021a

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 974
    :sswitch_5
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b021b

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 975
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b021c

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 979
    :sswitch_6
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v2, 0x7f0b021d

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->b(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 980
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v3, 0x7f0b021f

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/login/RealLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6, p4, p5}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    .line 1012
    :cond_b
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    const v1, 0x7f0800d0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    const/16 v0, 0x191

    if-ne p3, v0, :cond_5

    .line 1014
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->d(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1015
    iget-object v0, p0, Lcom/facebook/katana/activity/login/RealLoginActivity$LoginAppSessionListener;->a:Lcom/facebook/katana/activity/login/RealLoginActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/login/RealLoginActivity;->c(Lcom/facebook/katana/activity/login/RealLoginActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_1

    .line 947
    :sswitch_data_0
    .sparse-switch
        -0x258 -> :sswitch_6
        0x2 -> :sswitch_5
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x195 -> :sswitch_2
        0x196 -> :sswitch_3
        0x197 -> :sswitch_4
    .end sparse-switch
.end method
